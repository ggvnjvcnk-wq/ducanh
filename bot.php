<?php
header('Content-Type: text/html; charset=utf-8');


$data = file_get_contents('php://input');
require_once(__DIR__.'/core/DB.php');
require_once(__DIR__.'/core/helpers.php'); 
require_once(__DIR__.'/core/Bottele.php');

$json = json_decode($data, true);

$userId = $json['message']['from']['id']; // Khởi tạo $userId trước khi sử dụng
$bot_token = $DVR->site('token_bot_2');
$bot = new Bot($bot_token);

$isAdmin = ($userId == 6276536456); // Kiểm tra userId sau khi đã khởi tạo
$groupId = '-1002003701123';

$my_text = base64_decode($DVR->site('baohiem_notification'));
$scam_text = base64_decode($DVR->site('scam_notification'));
$not_fb_text = base64_decode($DVR->site('not_fb_notification'));
$not_fb_text = str_replace('{domain}', $_SERVER['SERVER_NAME'], $not_fb_text);

if (isset($json['message']['text'])) {
    $message = $json['message']['text'];
    $chatId = $json['message']['chat']['id'];
    $messageId = $json['message']['message_id'];
    
    $DVR = new DB(); 
    $DVR->connect();
    
    if ($isAdmin) {
        $adminCommand = strtolower($message);
        if (strpos($adminCommand, '/thongbao') === 0 || strpos($adminCommand, '/tb') === 0) {
            $notificationText = trim(str_replace(['/thongbao', '/tb'], '', $adminCommand));
            if (!empty($notificationText)) {
                $bot->sendMessage($groupId, $notificationText, null, 'HTML');
            } else {
                $bot->sendMessage($userId, 'Vui lòng nhập nội dung thông báo: /thongbao hoặc /tb + nội dung', null, 'HTML');
            }
        }
    }

    $messageWithoutSpaces = str_replace(' ', '', $message);

    if (filter_var($message, FILTER_VALIDATE_URL) && (strpos($message, 'facebook.com') !== false)) {
        // Kiểm tra liên kết Facebook
        $linkQueryCards = "SELECT * FROM gdv WHERE linkfb = '$message'";
        $linkRowsCards = $DVR->get_list($linkQueryCards);
        
        $linkQueryTicket = "SELECT * FROM tocaoscam WHERE linkfb = '$message'";
        $linkRowsTicket = $DVR->get_list($linkQueryTicket);
        
        if (!empty($linkRowsCards)) {
            $name = $linkRowsCards[0]['name'];
            $my_text = str_replace('{domain}', $_SERVER['SERVER_NAME'], $my_text);
            $my_text = str_replace('{name}', $name, $my_text);
            foreach ($linkRowsCards as $row) {
                $code = $row['code'];
                $my_text = str_replace('{code}', $code, $my_text);
            }
            $bot->sendMessage($chatId, $my_text, $messageId, 'HTML');
        } elseif (!empty($linkRowsTicket)) {
            $name = $linkRowsTicket[0]['username'];
            $amount = $linkRowsTicket[0]['money'];
            $scam_text = str_replace('{domain}', $_SERVER['SERVER_NAME'], $scam_text);
            $scam_text = str_replace('{name}', $name, $scam_text);
            $scam_text = str_replace('{amount}', $amount, $scam_text);
            foreach ($linkRowsTicket as $row) {
                $code = $row['code'];
                $scam_text = str_replace('{code}', $code, $scam_text);
            }
            $bot->sendMessage($chatId, $scam_text, $messageId);
        } else {
            $queryPos = strpos($message, '?');
            if ($queryPos !== false) {
                $linkWithoutQuery = substr($message, 0, $queryPos);
                $linkRowsCards = $DVR->get_list("SELECT * FROM gdv WHERE linkfb = '$linkWithoutQuery'");
                if (!empty($linkRowsCards)) {
                   $name = $linkRowsCards[0]['name'];
                   $my_text = str_replace('{domain}', $_SERVER['SERVER_NAME'], $my_text);
                   $my_text = str_replace('{name}', $name, $my_text);
            foreach ($linkRowsCards as $row) {
                $code = $row['code'];
                $my_text = str_replace('{code}', $code, $my_text);
            }
            $bot->sendMessage($chatId, $my_text, $messageId, 'HTML');
                } else {
                    $idMatches = [];
                    if (preg_match('/[&?]id=(\d+)/', $message, $idMatches)) {
                        $idToCheck = $idMatches[1];
                        $idRows = $DVR->get_list("SELECT * FROM gdv WHERE id_fb = '$idToCheck'");
                        if (!empty($idRows)) {
                            $name = $idRows[0]['name'];
            $my_text = str_replace('{domain}', $_SERVER['SERVER_NAME'], $my_text);
            $my_text = str_replace('{name}', $name, $my_text);
            foreach ($idRows as $row) {
                $code = $row['code'];
                $my_text = str_replace('{code}', $code, $my_text);
            }
            $bot->sendMessage($chatId, $my_text, $messageId, 'HTML');
                        } else {
                            
                            $bot->sendMessage($chatId, $not_fb_text, $messageId);
                        }
                    } else {
                        $bot->sendMessage($chatId, $not_fb_text, $messageId);
                    }
                }
            } else {
                $bot->sendMessage($chatId, $not_fb_text, $messageId);
            }
        }
    } elseif (filter_var($message, FILTER_VALIDATE_URL) && (strpos($message, $_SERVER['HTTP_HOST']) === false)) {
       $query = "SELECT * FROM tocaoscam WHERE username = '$message' AND loai = 'web'";
        $rows = $DVR->get_list($query);
        $responseText = "⚠️ Không Xác Định, Hãy Cẩn Thận Khi Truy Cập \n" . $message . "‼️";
        if (!empty($rows)) {
            $responseText = "🚫 Đây Là Trang Web Lừa Đảo 📛\n⚠️ Hãy Cảnh giác Với Website đó\n";
            foreach ($rows as $row) {
                $responseText .= "🔖 https://".$_SERVER['HTTP_HOST']."/scams/" . $row['code'] . ".html\n";
            }
        }
        $bot->sendMessage($chatId, $responseText, $messageId);
    } elseif (ctype_digit($messageWithoutSpaces) && strpos($message, ' ') === false) {
        $query = "SELECT * FROM tocaoscam WHERE sdt = '$message' OR stk = '$message'";
        $rows = $DVR->get_list($query);
        $responseText = "🕵️ $message Chưa Có Đơn Tố Cáo Nào \n🛡 Tại : ".$_SERVER['HTTP_HOST']."";
        if (!empty($rows)) {
            $responseText = "🕵 $message Đã Có Đơn Tố Cáo 📛\n⚠️ Hãy cảnh giác với stk, sđt này !!!\n";
            foreach ($rows as $row) {
                $responseText .= "🔖 https://".$_SERVER['HTTP_HOST']."/scams/" . $row['code'] . ".html\n";
            }
        }
        $bot->sendMessage($chatId, $responseText, $messageId);
    } 
}
?>
