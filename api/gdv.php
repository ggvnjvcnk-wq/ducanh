<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

define("IN_SITE", true);
require_once("../core/DB.php");
require_once("../core/helpers.php");

header('Content-Type: application/json; charset=utf-8');
$getData = $DVR->get_row(" SELECT * FROM `gdv` WHERE `status` = 'hoantat'");

if ($getData) {
    $data = [];
        $list_dichvu = [];
        foreach ($DVR->get_list("SELECT * FROM `gdv` WHERE  `status` = 'hoantat'  ORDER BY `id` DESC") as $row) {

            $list_dichvu[] = [
                'id'            => $row['id'],
                'name'          => $row['name'],
                'money'         => format_cash($row['money']),
                'linkfb'          => $row['linkfb'],
                'id_fb'        => $row['id_fb'],
                'link'          => 'https://'.$_SERVER['HTTP_HOST'].'/trust-services/'.$row['code'],
            ];
        }
    $data =
    [
        'status'    => 'success',
        'gdv'  => $list_dichvu
    ];
    echo json_encode($data, JSON_PRETTY_PRINT);
} else {
    die(json_encode([
        'status'    => 'error',
        'msg'       => 'NOT FOUND!!'
    ]));
}