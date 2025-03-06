<?php
$input = fgets(STDIN);
$nums = explode(" ", trim($input));
$a = intval($nums[0]);
$b = intval($nums[1]);
echo ($a + $b) . "\n";
?>