<?php
define("IN_SITE", true);
require_once("../../core/DB.php");
require_once("../../core/helpers.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    
    if ($DVR->site('status_demo') != 0) {
        $data = json_encode([
            'status'    => 'error',
            'msg'       => 'Không được dùng chức năng này vì đây là trang web demo'
        ]);
        die($data);
    }
    
    if (check_xss($_POST['tieude']) || check_xss($_POST['image-news']) || check_xss($_POST['noidung'])) {
        die(json_encode(['status' => 'error', 'msg' => 'Làm Gì Đó Em Zai']));
    }
    
    $date = date("Y-m-d");
    $tieude = xss($_POST['tieude']);
    $home = xss($_POST['home']);
    $image = xss($_POST['image-news']);
    $noidung = base64_encode($_POST['noidung']);

    if (empty($_POST['token'])) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui lòng đăng nhập']));
    }
    if (!$getUser = $DVR->get_row("SELECT * FROM `users` WHERE `token` = '" . xss($_POST['token']) . "' AND `level` = '1'")) {
        die(json_encode(['status' => 'error', 'msg' => 'Chức năng này chỉ danh cho admin']));
    }
    if (empty($tieude)) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui lòng nhập Tiêu Đề']));
    }
    if (empty($noidung)) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui lòng nhập Nội Dung']));
    }
    
    // Insert into database
    $insert_success = $DVR->insert("news", [
        'tieude'       => $tieude,
        'link'         => xoadau($tieude),
        'home' => $home,
        'image_news'   => $image,
        'noidung'      => $noidung,
        'status'       => 'hoantat',
        'ngaydang'     => $date,
        'luotxem'      => '0'
    ]);

    if ($insert_success) {
        // Insert log
        $DVR->insert("logs", [
            'user_id'       => $getUser['id'],
            'ip'            => myip(),
            'device'        => $_SERVER['HTTP_USER_AGENT'],
            'create_date'   => gettime(),
            'action'        => 'Thêm Bài Viết thành công (#' . $tieude . ')'
        ]);

        // Send Telegram notification
        sendTele(templateTele($getUser['username'] . " Thêm Bài Viết thành công (#" . $tieude . ")"));

        die(json_encode(['status' => 'success', 'msg' => 'Thêm Bài Viết thành công']));
    } else {
        die(json_encode(['status' => 'error', 'msg' => 'Không thêm được Bài Viết']));
    }

} else {
    echo json_encode(['status' => 'error', 'msg' => 'Invalid request method']);
}
?>
