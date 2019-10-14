<?php
// Добавление значения в memcached
require_once("connect.php");

//if ($m->add("key", "value")) {
//    echo "Значение успешно установлено: " . $m->get("key");
//}

//if ($m->append("key", "123")) {
//    echo "Значение успешно установлено: " . $m->get("key");
//}

if ($m->prepend('key', 'prepend')) {
    echo "Значение успешно установлено: " . $m->get("key");
}