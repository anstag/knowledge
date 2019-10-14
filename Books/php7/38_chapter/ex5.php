<?php
header ('Content-Type: image/png');
$im = imagecreatetruecolor(800, 600);
$green = imagecolorallocate($im, 0, 255, 0);

imagefill($im, 0,0, $green);

$tile = imagecreatefromjpeg('sample1.jpg');
imagesettile($im, $tile);

// Создаем массив точек со случайными координатами
$p = [];
for ($i = 0; $i < 4; $i++) {
    array_push($p, mt_rand(0, imageSX($im)), mt_rand(0, imageSY($im)));
}

imagefilledpolygon($im, $p, count($p)/2, IMG_COLOR_TILED);

imagepng($im, null, 9);
imagedestroy($im);
