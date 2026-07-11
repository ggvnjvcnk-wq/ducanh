<?php
define("IN_SITE", true);
require_once("../../core/DB.php");
require_once("../../core/helpers.php");

if ($_POST['action'] == 'add') {
    $code = xss($_POST['code']);
    
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
    if (empty($code)) {
        die(json_encode(['status' => '1', 'msg' => 'Vui Lòng Nhập Chuyên Mục']));
    }
    
    if (isset($_FILES['image']) && $_FILES['image']['error'] == UPLOAD_ERR_OK) {
        $fileTmpPath = $_FILES['image']['tmp_name'];
        $fileName = $_FILES['image']['name'];
        $uploadFileDir = $_SERVER['DOCUMENT_ROOT'] .'/public/theme/assets/default/images/category/';
        $dest_path = $uploadFileDir . $fileName;

        if (move_uploaded_file($fileTmpPath, $dest_path)) {
            $imageLink = 'public/theme/assets/default/images/category/' . $fileName;
            $DVR->insert("category", [
                'code' => xoadau($code),
                'name'  => $code,
                'image' => $imageLink
            ]);

            // Lưu hoạt động lại
            $DVR->insert("logs", [
                'user_id'       => $getUser['id'],
                'ip'            => myip(),
                'device'        => $_SERVER['HTTP_USER_AGENT'],
                'create_date'   => gettime(),
                'action'        => 'thêm chuyên mục thành công (#' . $code . ')'
            ]);
            
            sendTele(templateTele($getUser['username'] . " thêm chuyên mục thành công (#" . $code . ")"));

            die(json_encode(['status' => '2', 'msg' => 'Thêm chuyên mục thành công']));
        } else {
            die(json_encode(['status' => '1', 'msg' => 'Không thể upload hình ảnh']));
        }
    } else {
        die(json_encode(['status' => '1', 'msg' => 'Không nhận được file hình ảnh']));
    }
} else {
    die(json_encode(['status' => '1', 'msg' => 'Không nhận được kết quả từ API']));
}
