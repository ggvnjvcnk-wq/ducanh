<?php
define("IN_SITE", true);
require_once("../../core/DB.php");
require_once("../../core/helpers.php");

if (isset($_POST['id'])) {
    if ($DVR->site('status_demo') != 0) {
        $data = json_encode([
            'status'    => 'error',
            'msg'       => 'Không được dùng chức năng này vì đây là trang web demo'
        ]);
        die($data);
    }
    $getUser = $DVR->get_row(" SELECT * FROM `users` WHERE `token`='" . check_string($_POST['token']) . "' AND `level`='1'");
    if(!$getUser)
    {
        $data = json_encode([
            'status'    => 'error',
            'msg'       => 'Chức Năng Này Chỉ Dành Cho Admin'
        ]);
        die($data);
    }
    $id = check_string($_POST['id']);
    $row = $DVR->get_row("SELECT * FROM `pack_baohiem` WHERE `id` = '$id' ");
    if (!$row) {
        $data = json_encode([
            'status'    => 'error',
            'msg'       => 'Gói Bảo Hiểm không tồn tại trong hệ thống'
        ]);
        die($data);
    }
    $isRemove = $DVR->remove("pack_baohiem", " `id` = '$id' ");
    if ($isRemove) {
        $DVR->insert("logs", [
            'user_id'       => $getUser['id'],
            'ip'            => myip(),
            'device'        => $_SERVER['HTTP_USER_AGENT'],
            'create_date'    => gettime(),
            'action'        => 'Xóa Gói Bảo Hiểm ('.$row['id'].') '
         ]);
        $data = json_encode([
            'status'    => 'success',
            'msg'       => 'Xóa Gói Bảo Hiểm thành công'
        ]);
        die($data);
    }
} else {
    $data = json_encode([
        'status'    => 'error',
        'msg'       => 'Dữ liệu không hợp lệ'
    ]);
    die($data);
}