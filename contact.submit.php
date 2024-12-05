<?php
include ("class/class.connection.php");
include ("class/class.geoiploc.php");

$name = $_POST["full_name"];
$email = $_POST["email"];
$url = $_POST["url"];
$number = $_POST["contactnumber"];
$message = $_POST["message"];
$newsletter = $_POST["newsletter"];

$ipAdd = getenv("REMOTE_ADDR");
$country  = getCountryFromIP($ipAdd, "NamE");

$runSQL = "INSERT INTO tbl_msg_private (mp_Sender, mp_Email, mp_URL, mp_Number, mp_Body, mp_IPAdd, mp_Country) VALUES ('".$name."', '".$email."', '".$url."', '".$number."', '".$message."', '".$ipAdd."', '".$country."')";

if(@mysql_query($runSQL)) {
	if ($newsletter == "1") {
		$newsletterSQL = "INSERT INTO tbl_email_subscriber (es_Fullname, es_Email, es_URL, es_Active, es_IPAdd, es_Country) VALUES ('".$name."', '".$email."', '".$url."', 1, '".$ipAdd."', '".$country."')";
		if(@mysql_query($newsletterSQL)) {
			header("Location: index.php");
			exit();
		}
	} else {	
		header("Location: index.php");
		exit();
	}
}
mysql_close();
?>