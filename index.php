<?php 

include("class/class.connection.php");

error_reporting(0);
session_start();

if(!isset($_SESSION["warmup"])) {
	$_SESSION["warmup"]=1;
	header("Location: ?flip=home.main");
}

$paging = $_GET["flip"];
list($pager,$section) = explode(".", $paging);

//record guest visitation session per day
$ipAdd = getenv("REMOTE_ADDR");
$today = date("M j, Y");
$cntVisit = 0;

//get browser used by user
if(strpos($_SERVER["HTTP_USER_AGENT"], "MSIE") !== FALSE) {
    $userWB = "Internet Explorer - MSIE";
} elseif(strpos($_SERVER["HTTP_USER_AGENT"], "Trident") !== FALSE) { //For Supporting IE 11
    $userWB = "Internet Explorer - Trident";
} elseif(strpos($_SERVER["HTTP_USER_AGENT"], "Firefox") !== FALSE) {
    $userWB = "Mozilla Firefox";
} elseif(strpos($_SERVER["HTTP_USER_AGENT"], "Chrome") !== FALSE) {
    $userWB = "Google Chrome: ";
} elseif(strpos($_SERVER["HTTP_USER_AGENT"], "Opera Mini") !== FALSE) {
    $userWB = "Opera Mini";
} elseif(strpos($_SERVER["HTTP_USER_AGENT"], "Opera") !== FALSE) {
    $userWB = "Opera";
} elseif(strpos($_SERVER["HTTP_USER_AGENT"], "Safari") !== FALSE) {
    $userWB = "Safari";
} else {
	$userWB = "Unidentified: ".$_SERVER["HTTP_USER_AGENT"];	
}

$sqlVisit = "SELECT * FROM tbl_site_visitor WHERE sv_IPAdd = '".$ipAdd."' AND sv_Date = '".$today."'";
$qryVisit = mysql_query($sqlVisit) or die(mysql_error());
while($RsVisit = mysql_fetch_array($qryVisit, MYSQL_BOTH)) {
	$cntVisit  = $cntVisit  + 1;
} mysql_free_result($qryVisit);

if ($cntVisit  == 0) {
	include ("class/class.geoiploc.php");
	$country  = getCountryFromIP($ipAdd, "NamE");
	$thetime = date("g:i:s A");	
	$runSQL = "INSERT INTO tbl_site_visitor (sv_IPAdd, sv_Browser, sv_Country, sv_Date, sv_Time) VALUES ('".$ipAdd."', '".$userWB."', '".$country."', '".$today."', '".$thetime."')";
	mysql_query($runSQL);
}
//end record guest visitation session per day

$sqlSEO = "SELECT * FROM tbl_seo WHERE pKey = 1";
$qrySEO = mysql_query($sqlSEO) or die(mysql_error());
while($RsSEO = mysql_fetch_array($qrySEO, MYSQL_BOTH)) {
	$seoTitle = $RsSEO["title"];
	$seoDescription = $RsSEO["description"];
	$seoKeywords = $RsSEO["keyword"];
	$seoHeader = $RsSEO["header"];
	$seoSubHeader = $RsSEO["subheader"];
	$seoUpdate = $RsSEO["started"];
	$seoVer = $RsSEO["version"];
} mysql_free_result($qrySEO);

include("header.php");

switch ($pager) {
	case "home":
		include("home.php");
		break;
	default:
		include("home.php");
		break;
}

include("footer.php");
?>