<?php
define("IN_SITE", true);
require_once("../core/DB.php");
require_once("../core/helpers.php");


if (isset($_GET['token']) && isset($_GET['otp'])) {
    $token = $_GET['token'];
    $otp = $_GET['otp'];
    $getUser = $DVR->get_row(" SELECT * FROM `users` WHERE `token` = '$token'");
    if (!$getUser) {
         require_once(__DIR__."/failed.html");
    }
    $check_otp = $DVR->get_row(" SELECT * FROM `users` WHERE `token` = '$token' AND `otp` = '$otp'");
    if (!$check_otp) {
         require_once(__DIR__."/failed.html");
    } else {
        $id = $check_otp['id'];
        $update = $DVR->update("users", [
            'otp' => null,
            'xt_email' => 1,
        ], " `id` = '" . $id . "' ");
        if ($update) {
             require_once(__DIR__."/success.html");
        } else {
            require_once(__DIR__."/failed.html");
        }
    }
} else {
    require_once(__DIR__."/failed.html");
}
