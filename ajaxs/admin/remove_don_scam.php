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
    $getUser = $DVR->get_row("SELECT * FROM `users` WHERE `token`='" . check_string($_POST['token']) . "' AND `level`='1'");
    if (!$getUser) {
        $data = json_encode([
            'status' => 'error',
            'msg' => 'Chức Năng Này Chỉ Dành Cho Admin'
        ]);
        die($data);
    }
    
    $id = check_string($_POST['id']);
    $row = $DVR->get_row("SELECT * FROM `tocaoscam` WHERE `id` = '$id'");
    if (!$row) {
        $data = json_encode([
            'status' => 'error',
            'msg' => 'Đơn không tồn tại trong hệ thống'
        ]);
        die($data);
    }
    
    $code = $row['code'];
    $bc_rows = $DVR->get_list("SELECT * FROM `bangchung` WHERE `code` = '$code' ORDER BY id desc");
    
    foreach ($bc_rows as $bc) {
        $patch = $_SERVER['DOCUMENT_ROOT']. $bc['image'];
        
        if (file_exists($patch)) {
            
            if (!unlink($patch)) {
                $data = json_encode([
                    'status' => 'error',
                    'msg' => 'Xóa Link Ảnh Không Thành Công'
                ]);
                die($data);
            }
        } else {
            $data = json_encode([
                'status' => 'error',
                'msg' => 'Tệp không tồn tại: ' . $patch
            ]);
            die($data);
        }
    }
    
    $DVR->remove("bangchung", " `code` = '$code'");
    
    $isRemove = $DVR->remove("tocaoscam", " `id` = '$id'");
    if ($isRemove) {
        $DVR->insert("logs", [
            'user_id' => $getUser['id'],
            'ip' => myip(),
            'device' => $_SERVER['HTTP_USER_AGENT'],
            'create_date' => gettime(),
            'action' => 'Xóa Đơn Tố Cáo #(' . $row['id'] . ')'
        ]);
        $data = json_encode([
            'status' => 'success',
            'msg' => 'Xóa Đơn Tố Cáo thành công'
        ]);
        die($data);
    } else {
        $data = json_encode([
            'status' => 'error',
            'msg' => 'Xóa Đơn Tố Cáo không thành công'
        ]);
        die($data);
    }
} else {
    $data = json_encode([
        'status' => 'error',
        'msg' => 'Dữ liệu không hợp lệ'
    ]);
    die($data);
}
