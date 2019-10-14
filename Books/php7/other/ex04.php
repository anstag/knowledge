<?php

echo 'start code' . PHP_EOL;

try {
    echo 'try' . PHP_EOL;
    throw new \RuntimeException('Message');
} catch (Exception $e) {
    echo 'exception' . PHP_EOL;
} finally {
    echo 'finally' . PHP_EOL;
}

echo 'end code' . PHP_EOL;

exit('[done]' . PHP_EOL);