<?php
$pattern = '/(\d+)/s';
$subject = 'article_123.html';

preg_match($pattern, $subject, $matches);

print_r($matches);

