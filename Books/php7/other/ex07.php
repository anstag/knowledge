<?php
$ip = '92.53.125.158';

$host = gethostbyaddr($ip);
echo $host . PHP_EOL;

$host = gethostbyname($host);
echo $host . PHP_EOL;


//===
$host = 'anstag.ru';
$ip = gethostbyname($host);

$host = gethostbyaddr($ip);
echo $host . PHP_EOL;
