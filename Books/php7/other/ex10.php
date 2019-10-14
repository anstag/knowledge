<?php
echo filter_var(
    //'127.0.0.1',
    '192.168.0.1',
    FILTER_VALIDATE_IP,
    FILTER_FLAG_NO_PRIV_RANGE
); // 127.0.0.1?