<?php
define("IN_SITE", true);
require_once("../../core/DB.php");
require_once("../../core/helpers.php");
require_once(__DIR__."/../../version.php");
    
    
$opts = [
    'ssl' => [
        'verify_peer' => false,
        'verify_peer_name' => false,
    ]
];

$context = stream_context_create($opts);

$url = 'http://client.dichvuright.com/checkscam/version.php';
$response = file_get_contents($url, false, $context);
$response = json_decode($response, true );
    
    if($response  && $response != '' &&  $response['version']) 
    {
    if($response['version'] != $config['version'])
    {
       if(base64_encode($response['note_dichvuright']) != $DVR->site('note_dichvuright'))
      {  
       $DVR->update("settings", [
             'value'      => base64_encode($response['note_dichvuright']),
        ], " `name` = 'note_dichvuright' ");   
      }
      die(json_encode(['status' => 'success', 'msg' => 'Code đã có phiên bản mới '.$config['version'].' => '.$response['version'].', vui lòng bấm cập nhật để được update các tính năng mới nhất'] ));
    }
    if(base64_encode($response['note_dichvuright']) != $DVR->site('note_dichvuright'))
    {
        $DVR->update("settings", [
             'value'      => base64_encode($response['note_dichvuright']),
        ], " `name` = 'note_dichvuright' "); 
      die(json_encode(['status' => 'success', 'msg' => 'Bạn có thông báo mới từ dichvuright, bạn có muốn đọc không'] ));
    }
    }
    die(json_encode(['status' => 'error', 'msg' => 'Không có gì mới']));
    
    
    