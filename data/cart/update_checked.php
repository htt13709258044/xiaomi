<?php
/**
* 修改购物车条目中的是否勾选
*/
require_once('../init.php');
@$iid = $_REQUEST['iid'] or die('{"code":401,"msg":"iid required"}');
@$checked = $_REQUEST['checked'];
if($checked!=='0' && !$checked){
  die('{"code":402,"msg":"checked required"}');
}

session_start();
if(! @$_SESSION['uid']){
  die('{"code":300, "msg":"login required"}');
}


$sql = "UPDATE mi_shoppingcart_item SET is_checked=$checked WHERE iid=$iid";
$result = mysqli_query($conn, $sql);
if($result){
  echo '{"code":200, "msg":"update succ"}';
}else {
  echo '{"code":500, "msg":"update err"}';
}
