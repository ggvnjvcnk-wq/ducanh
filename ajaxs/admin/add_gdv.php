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
    
    if (check_xss($_POST['title']) || check_xss($_POST['image']) || check_xss($_POST['money']) || check_xss($_POST['sdt']) || check_xss($_POST['email']) || check_xss($_POST['telegram']) || check_xss($_POST['linkfb']) || check_xss($_POST['idfb']) || check_xss($_POST['gioi_thieu'])) {
        die(json_encode(['status' => 'error', 'msg' => 'Làm Gì Đó Em Zai']));
    }
    
    $date = date("Y-m-d");
    $selected_products = isset($_POST['cat_id']) ? $_POST['cat_id'] : [];
    $json_products = json_encode($selected_products);
    $active_xt = xss($_POST['active_xt']);
    $selectedPack = xss($_POST['selectedPack']);
    $title = xss($_POST['title']);
    $image = xss($_POST['image']);
    $banner = xss($_POST['banner']);
    $website = xss($_POST['website']);
    $money = xss($_POST['money']);
    $sdt = xss($_POST['sdt']);
    $email = xss($_POST['email']);
    $telegram = xss($_POST['telegram']);
    $linkfb = xss($_POST['linkfb']);
    $idfb = xss($_POST['idfb']);
    $gioi_thieu = ($_POST['gioi_thieu']);
    $banks = array_map('htmlspecialchars', $_POST['bank']);
    $ctk = array_map('htmlspecialchars', $_POST['ctk']);
    $account_nums = array_map('htmlspecialchars', $_POST['account_num']);

    
      if (empty($_POST['token'])) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui lòng đăng nhập']));
    }
    if (!$getUser = $DVR->get_row("SELECT * FROM `users` WHERE `token` = '" . xss($_POST['token']) . "' AND (`level` = '1' OR `level` = '2')")) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui lòng đăng nhập']));
    }
    if (empty($title)) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui Lòng Nhập Tên']));
    }
     if (empty($image)) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui Lòng Nhập Link Ảnh']));
    }
     if (empty($money)) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui Lòng Nhập Số Tiền Bảo Hiểm']));
    }
     if (empty($sdt)) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui Lòng Nhập SĐT']));
    }
    if (empty($website)) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui Lòng Nhập Website']));
    }
     if (empty($telegram)) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui Lòng Nhập ID Telegram']));
    }
    if (empty($email)) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui Lòng Nhập Email']));
    }
     if (empty($linkfb)) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui Lòng Nhập Link FB']));
    }
     if (empty($idfb)) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui Lòng Nhập UID FB']));
    }
     if (empty($gioi_thieu)) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui Lòng Nhập giới thiệu']));
    }
     if (empty($banks)) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui Lòng Chọn Ngân Hàng']));
    }
     if (empty($account_nums)) {
        die(json_encode(['status' => 'error', 'msg' => 'Vui Lòng Nhập STK']));
    }
    if (empty($ctk)) {
      die(json_encode(['status' => 'error', 'msg' => 'Vui Lòng Nhập Chủ Tài Khoản']));
    }
    $banks_string = implode("\n", $banks);
    $ctk_string = implode("\n", $ctk);
    $account_nums_string = implode("\n", $account_nums);
    $user_id = $getUser['id'];
    // Insert into database
    $insert_success = $DVR->insert("gdv", [
         'name'           => $title,
        'code'           => xoadau($title),
        'image'          => $image,
        'money'          => $money,
        'dich_vu'          => $json_products,
        'website' => $website,
        'banner' => $banner,
        'sdt'            => $sdt,
        'email'            => $email,
        'telegram'       => $telegram,
        'linkfb'         => $linkfb,
        'id_fb'           => $idfb,
        'ngay'           => $date,
        'gioi_thieu'  => $gioi_thieu,
        'ngan_hang'      => $banks_string,
        'status'      => 'hoantat',
        'ctk'  => $ctk_string,
        'active_xt' => $active_xt,
        'pack_baohiem' => $selectedPack,
        'user_id' => $user_id,
        'stk'            => $account_nums_string
    ]);

    if ($insert_success) {
        // Insert log
        $DVR->insert("logs", [
            'user_id'       => $getUser['id'],
            'ip'            => myip(),
            'device'        => $_SERVER['HTTP_USER_AGENT'],
            'create_date'   => gettime(),
            'action'        => 'thêm GDV thành công (#' . $title . ')'
        ]);

        // Send Telegram notification
        sendTele(templateTele($getUser['username'] . " thêm GDV thành công (#" . $title . ")"));

        die(json_encode(['status' => 'success', 'msg' => 'Thêm GDV thành công']));
    } else {
        die(json_encode(['status' => 'error', 'msg' => 'Không thêm được GDV']));
    }

} else {
    echo json_encode(['status' => 'error', 'msg' => 'Invalid request method']);
}
?>
