<?php
// Соединение с memcached
$m = new Memcache();
$m->addServer('localhost', 11211);
