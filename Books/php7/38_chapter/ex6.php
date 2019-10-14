<?php
// создание изображения 300x150
$im = imagecreatetruecolor(300, 150);
$black = imagecolorallocate($im, 0, 0, 0);
$white = imagecolorallocate($im, 255, 255, 255);

// Белый фон
imagefilledrectangle($im, 0, 0, 299, 299, $white);

// Путь к файлу шрифта
$font = __DIR__ . '/arial.ttf';

// создаем рамку для текста
$bbox = imagettfbbox(10, 45, $font, 'Powered by PHP ' . phpversion());

// наши координаты X и Y
$x = $bbox[0] + (imagesx($im) / 2) - ($bbox[4] / 2) - 25;
$y = $bbox[1] + (imagesy($im) / 2) - ($bbox[5] / 2) - 5;

// Пишем текст
imagettftext($im, 10, 45, $x, $y, $black, $font, 'Powered by PHP ' . phpversion());

// создаем другую рамку для другого текста
$bbox = imagettfbbox(10, 45, $font, 'and Zend Engine ' . zend_version());

// задаем координаты так, чтобы текст шел сразу за первой надписью
$x = $bbox[0] + (imagesx($im) / 2) - ($bbox[4] / 2) + 10;
$y = $bbox[1] + (imagesy($im) / 2) - ($bbox[5] / 2) - 5;

// Пишем вторую надпись
imagettftext($im, 10, 45, $x, $y, $black, $font, 'and Zend Engine ' . zend_version());

// Вывод в броузер
header('Content-Type: image/png');

imagepng($im);
imagedestroy($im);