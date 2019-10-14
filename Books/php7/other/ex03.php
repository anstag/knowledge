<?php
// Преобразования e-mail в HTML-ссылку
// сочетание $0 будет заменено найденным совпадением целиком

$text = 'Привет от somebody@mail.ru, а также other@mail.ru!';
$pattern = '/(\S+)@([a-z0-9.]+)/is';
$replacement = '<a href="mailto:$0">$0</a>';

$content = preg_replace($pattern, $replacement, $text);
?>
<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Example</title>
</head>
<body>
    <p><?= $content ?></p>
</body>
</html>

