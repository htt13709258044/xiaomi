<?php
	header("Content-Type:application/json");
    	require_once("../init.php");
    	$sql="select pid,title,stock,isHot from mi_phone_detail ";
    	@$kw=$_REQUEST["term"];
    	if($kw){
    		$kws=explode(" ",$kw);
    		for($i=0;$i<count($kws);$i++){
    			$kws[$i]=" title like '%".$kws[$i]."%' ";
    		}
    		$where=" where  ".implode(" and ",$kws);
    		$sql.=$where;
    	}
    	$sql.=" order by stock desc limit 10 ";
    	$result=mysqli_query($conn,$sql);
    	echo json_encode(mysqli_fetch_all($result,1));
?>