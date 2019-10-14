<?php
// Обработка ошибок выполнения запросов
require_once("connect.php");

//print_r(get_class_methods($m));
//exit();

if (!$m->add("key", "value")) echo $m->getResultMessage() . "<br />";
if (!$m->add("key", "value")) echo $m->getResultMessage() . "<br />"; // NOT STORED