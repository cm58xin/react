<?php
	require('user.php');

	header("Access-Control-Allow-Origin: *");
	// 请求的URL地址
	$url = $_SERVER['REQUEST_URI'];

	// 请求方法
	$method = $_SERVER['REQUEST_METHOD'];
	$method = strtolower($method);
	$params = $_REQUEST ? $_REQUEST : null;
	if($method == 'get' && $params){
		$url = strstr($url, '?', TRUE);
	}
	// 请求参数
	$params = $_REQUEST;
	$user = new User($method, $url, $params);
	// $order = new Order($method, $url, $params);
	// $file = new File($method, $url, $params);
	$arr = array();
	array_push($arr, $user);

	for($i=0; $i<count($arr); $i++){
		$url1 = substr($url,1);
		$urlname = $method.$url1;
		// echo "$urlname";
		$len = count($arr);
		if(method_exists ($arr[$i] , $urlname)){
			$arr[$i]->$urlname();
			break;
		}else{
			continue;
		}
		if($i == $len-1){
			echo "该路由不存在";
			break;
		}
	}

?>
