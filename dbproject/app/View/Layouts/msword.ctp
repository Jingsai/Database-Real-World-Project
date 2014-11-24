<?php
//file:app/views/layout/msword.ctp
header("Content-Type: application/vnd.ms-word");
header("Cache-Control: no-cache, must-revalidlate");
header("Expires:");
header("Content-dispostion:attachment");
echo $content_for_layout;
?>
