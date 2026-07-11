<?php
define("IN_SITE", true);
require_once("../../core/DB.php");
require_once("../../core/helpers.php");

if ($_POST['action'] == 'add') {
    $name = xss($_POST['name']);
    $url = xss($_POST['url']);
    $image = xss($_POST['image']);
    
    if ($DVR->site('status_demo') != 0) {
        $data = json_encode([
            'status'    => 'error',
            'msg'       => 'Không được dùng chức năng này vì đây là trang web demo'
        ]);
        die($data);
    }
    if (empty($_POST['token'])) {
        die(json_encode(['status' => '1', 'msg' => 'Vui lòng đăng nhập']));
    }
    if (!$getUser = $DVR->get_row("SELECT * FROM `users` WHERE `token` = '" . xss($_POST['token']) . "' AND `level` = '1' ")) {
        die(json_encode(['status' => '1', 'msg' => 'Chức Năng Này Chỉ Dành Cho Admin']));
    }
    if (empty($name)) {
        die(json_encode(['status' => '1', 'msg' => 'Vui Lòng Nhập Tên Đối Tác']));
    }
      if (empty($url)) {
        die(json_encode(['status' => '1', 'msg' => 'Vui Lòng Nhập URL Đối Tác']));
    }
     if (empty($image)) {
        die(json_encode(['status' => '1', 'msg' => 'Vui Lòng Nhập Nhập Link Ảnh']));
    }
    } else {
    die(json_encode(['status' => '1', 'msg' => 'Không nhận được kết quả từ API']));
   }
    
    if (1==1) {
          $DVR->insert("doitac", [
            'name'  => $name,
            'url'  => $url,
            'image' => $image,
            'status' => '1',
        ]);
        /* LƯU HOẠT ĐỘNG LẠI */
        $DVR->insert("logs", [
            'user_id'       => $getUser['id'],
            'ip'            => myip(),
            'device'        => $_SERVER['HTTP_USER_AGENT'],
            'create_date'    => gettime(),
            'action'        => 'thêm đối tác thành công (#' . $name . ')'
        ]);
        
        sendTele(templateTele($getUser['username']." thêm đối tác thành công (#" .$name . ")"));

        die(json_encode(['status' => '2', 'msg' => 'Thêm đối tác thành công']));
    } else {
    die(json_encode(['status' => '1', 'msg' => 'Không Thêm Được đối tác']));
   }
