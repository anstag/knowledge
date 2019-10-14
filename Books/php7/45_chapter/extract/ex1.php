<?php
$m = new Memcached();

/* Добавляет 2 сервера в пул, вероятность быть выбранным у второго сервера в 2 раза выше. */
$m->addServer('mem1.domain.com', 11211, 10);
$m->addServer('mem2.domain.com', 11211, 100);

// или
$m->addServers([
    ['mem1.domain.com', 11211, 10],
    ['mem2.domain.com', 11211, 100]
]);

