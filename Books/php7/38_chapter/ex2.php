<?php
// Работа с полупрозрачными цветами
$size = 300;
$im = imageCreateTrueColor($size, $size);
$back = imageColorAllocate($im, 255, 255, 255);
imageFilledRectangle($im, 0, 0, $size - 1, $size - 1, $back);

// Создаем идентификаторы полупрозрачных цветов
$yellow = imageColorAllocateAlpha($im, 255, 255, 0, 75);
$red = imageColorAllocateAlpha($im, 255, 0, 0, 75);
$blue = imageColorAllocateAlpha($im, 0, 0, 255, 75);

// Рисуем 3 пересекающихся круга
$radius = 150;
imageFilledEllipse($im, 150, 100, $radius, $radius, $yellow);
imageFilledEllipse($im, 100, 200, $radius, $radius, $red);
imageFilledEllipse($im, 200, 200, $radius, $radius, $blue);

// Выводим изображение в браузер
header('Content-type: image/png');
imagePng($im);