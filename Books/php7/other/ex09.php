<?php
function query($url, &$var) {
    if(!is_string($url)) { return false; }

    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
    $content = curl_exec($ch);

    if(func_num_args() > 1) { $var = curl_getinfo($ch); }
    curl_close($ch);

    return $content;
}

$content = query('https://insta-get.ru', $info);
//var_dump($info);
print_r($info);