<?php
$timeStart = microtime(true);

//session_save_path(__DIR__ . '/myTmp');
//session_name('test1');
//session_start();
//// sleep(2);
//if (isset($_SESSION['count'])) {
//    $_SESSION['count']++;
//} else {
//    $_SESSION['count'] = 0;
//}
file_get_contents('https://insta-get.ru/');

//echo 'Count: ' . $_SESSION['count'] . '<br>';
//echo 'Session path: ' . session_save_path() . '<br>';
//echo 'Session id: ' . session_id();

$timeExecute = microtime(true) - $timeStart;
exit('<hr>Time: ' . $timeExecute);