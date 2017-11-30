<?php
	class User{

	   //黄敏琼的路由-------------------------------------------------------------------------------------------
        function getSelectProducts(){
            $type = isset($_REQUEST['type']) ? $_REQUEST['type'] : '';
            $sql = "select * from productlist where type like '%$type%'";
            $result = $this->conn->query($sql);
            if($result->num_rows <= 0){
                echo json_encode("无数据",JSON_UNESCAPED_UNICODE);
            }else{
                // 获取查询结果
                $row = $result->fetch_all(MYSQLI_ASSOC);
                echo json_encode($row,JSON_UNESCAPED_UNICODE);
            }
            //关闭连接
            $this->conn->close();
        }

		function getproductlist(){
            $sql = "select * from productlist ";
            $result = $this->conn->query($sql);
            if($result->num_rows < 0){
                echo json_encode("无数据",JSON_UNESCAPED_UNICODE);
            }else{
                // 获取查询结果
                $result = $this->conn->query($sql);
                $row = $result->fetch_all(MYSQLI_ASSOC);
                echo json_encode($row,JSON_UNESCAPED_UNICODE);
            }
			//关闭连接
			$this->conn->close();
	   	}


		function getgocarlist(){
			$name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
		   	$description = isset($_REQUEST['description']) ? $_REQUEST['description'] : '';
			$num = isset($_REQUEST['num']) ? $_REQUEST['num'] : '';
			$color = isset($_REQUEST['colortype']) ? $_REQUEST['colortype'] : '';
		   	$price = isset($_REQUEST['price']) ? $_REQUEST['price'] : '';
		   	$imgurl = isset($_REQUEST['imgurl']) ? $_REQUEST['imgurl'] : '';
		   	$type = isset($_REQUEST['sizetype']) ? $_REQUEST['sizetype'] : '';

	   		$sql = "insert into mingcarlist (imgurl,sizetype,price, num,name, description,colortype) values ('$imgurl','$type','$price','$num', '$name', '$description', '$color')";
	   		$result = $this->conn->query($sql);
            if($result){
                echo json_encode("ok",JSON_UNESCAPED_UNICODE);
            }else{
                echo json_encode("fail",JSON_UNESCAPED_UNICODE);
            }
	   	}

	   	//明经平的路由-------------------------------------------------------------------------------------------
   		function getMcarlist(){
            $sql = "select * from Mingcarlist ";
            $result = $this->conn->query($sql);
            if($result->num_rows < 0){
                echo json_encode("无数据",JSON_UNESCAPED_UNICODE);
            }else{
                // 获取查询结果
                $result = $this->conn->query($sql);
                $row = $result->fetch_all(MYSQLI_ASSOC);
                echo json_encode($row,JSON_UNESCAPED_UNICODE);
            }
			//关闭连接
			$this->conn->close();
	   	}

	   	function getMdeletcarlist(){
	   		$id = isset($_REQUEST['id']) ? $_REQUEST['id'] : '';

  	   		$sql = "DELETE FROM Mingcarlist where id='$id'";

	   		$result = $this->conn->query($sql);

	   		if ($result){
        		 echo  json_encode('ok',JSON_UNESCAPED_UNICODE);
			}else{
    			echo  json_encode("fail",JSON_UNESCAPED_UNICODE);
    		}

			//关闭连接
			$this->conn->close();
	   	}

   		function getMorder(){
            $sql = "select * from morder ";
            $result = $this->conn->query($sql);
            if($result->num_rows < 0){
                echo json_encode("无数据",JSON_UNESCAPED_UNICODE);
            }else{
                // 获取查询结果
                $result = $this->conn->query($sql);
                $row = $result->fetch_all(MYSQLI_ASSOC);
                echo json_encode($row,JSON_UNESCAPED_UNICODE);
            }
			//关闭连接
			$this->conn->close();
	   	}

   		function getInsertorder(){
           	$orderId = isset($_REQUEST['orderId']) ? $_REQUEST['orderId'] : '';
		   	$ordercontent = isset($_REQUEST['ordercontent']) ? $_REQUEST['ordercontent'] : '';
			$status = isset($_REQUEST['status']) ? $_REQUEST['status'] : '';
	   		$sql = "insert into morder (orderId,status,ordercontent) values ('$orderId','$status','$ordercontent')";
	   		$result = $this->conn->query($sql);
            if($result){
                echo json_encode("ok",JSON_UNESCAPED_UNICODE);
            }else{
                echo json_encode("fail",JSON_UNESCAPED_UNICODE);
            }
	   	}


	   	//王丽雅路由-------------------------------------------------------------------------------------------
   		function getclassify(){
            $sql = "select * from classify ";
            $result = $this->conn->query($sql);
            if($result->num_rows < 0){
                echo json_encode("无数据",JSON_UNESCAPED_UNICODE);
            }else{
                // 获取查询结果
                $result = $this->conn->query($sql);
                $row = $result->fetch_all(MYSQLI_ASSOC);
                echo json_encode($row,JSON_UNESCAPED_UNICODE);
            }
			//关闭连接
			$this->conn->close();
	   	}

   		function getlogin(){

           $username = isset($_REQUEST['username']) ? $_REQUEST['username'] : '';
//
		   $password = isset($_REQUEST['password']) ? $_REQUEST['password'] : '';
//		   $password = md5($password);
			/*
				password_hash()     //对密码加密.
					* PASSWORD_DEFAULT：Bcrypt加密算法，字段超过60个字符长度，
					* PASSWORD_BCRYPT：字符串长度总为60。
				password_verify()    //验证已经加密的密码，检验其hash字串是否一致.
			 */
			// $password = password_hash($password,PASSWORD_DEFAULT);
		   $sql = "select password from register where name='$username'";
//
		   $result = $this->conn->query($sql);
		   $row = $result->fetch_all(MYSQLI_ASSOC);
		   $passwords =  $row[0]["password"];
		   if (password_verify($password, $passwords)) {
			   	echo json_encode("ok",JSON_UNESCAPED_UNICODE);
			   	session_start();
				$_SESSION["wlname"] = $username;
			} else {
			   	echo json_encode("fail",JSON_UNESCAPED_UNICODE);
			}
	   	}

   		function getloginSession(){
   			session_start();
			if(isset($_SESSION['wlname'])){
				echo 'true';
			}else {
				//跳转页面
				echo 'false';
				exit;
			}
	   	}

	   	function getloginDeletSession(){
	   		session_start();
			session_unset();
			//使用unset()函数来释放在Session中注册的单个变量unset($_SESSION['键名']);
			session_destroy();

	   		//echo json_encode("ok",JSON_UNESCAPED_UNICODE);
	   		echo json_encode("ok",JSON_UNESCAPED_UNICODE);
	   	}



	   	function getregister(){

	   		$username = isset($_REQUEST['username']) ? $_REQUEST['username'] : '';

			$password = isset($_REQUEST['password']) ? $_REQUEST['password'] : '';

			$limits = isset($_REQUEST['limits']) ? $_REQUEST['limits'] : '员工';

			$sql = "select name from register where name='$username'";

			$result = $this->conn->query($sql);
			if($result->num_rows>0){
				 echo json_encode("fail",JSON_UNESCAPED_UNICODE);
			}else{
				// 密码md5加密
				// md5()
				//$password = md5($password);
				/*
					password_hash()     //对密码加密.
						* PASSWORD_DEFAULT：Bcrypt加密算法，字段超过60个字符长度，
						* PASSWORD_BCRYPT：字符串长度总为60。
					password_verify()    //验证已经加密的密码，检验其hash字串是否一致.
				 */
				 $password = password_hash($password,PASSWORD_DEFAULT);

				$sql = "insert into register (name,password,identity) values ('$username','$password','$limits')";
				// 获取查询结果
				$result1 = $this->conn->query($sql);
				if ($result1) {
				   echo json_encode("ok",JSON_UNESCAPED_UNICODE);
				} else {
				   echo json_encode("registerFail",JSON_UNESCAPED_UNICODE);
				}
			}
			//关闭连接
			$this->conn->close();
	   	}
	   	//移动端的注册
	   	function getregistertel(){
	   		$username = isset($_REQUEST['username']) ? $_REQUEST['username'] : '';

			$password = isset($_REQUEST['password']) ? $_REQUEST['password'] : '';

			$limits = isset($_REQUEST['limits']) ? $_REQUEST['limits'] : '会员';

			$sql = "select name from registerTel where name='$username'";

			$result = $this->conn->query($sql);
			if($result->num_rows>0){
				 echo json_encode("fail",JSON_UNESCAPED_UNICODE);
			}else{
				// 密码md5加密
				// md5()
				$password = md5($password);
				$sql = "insert into registertel (name,password,identity) values ('$username','$password','$limits')";
				// 获取查询结果
				$result1 = $this->conn->query($sql);
				if ($result1) {
				   echo json_encode("ok",JSON_UNESCAPED_UNICODE);
				} else {
				    echo json_encode("registerTelFail",JSON_UNESCAPED_UNICODE);
				}
			}
			//关闭连接
			$this->conn->close();
	   	}

	   	function getreg(){
	   		$username = isset($_REQUEST['username']) ? $_REQUEST['username'] : '';

			$sql = "select name from registertel where name='$username'";

			$result = $this->conn->query($sql);
			if($result->num_rows>0){
				 echo json_encode("fail",JSON_UNESCAPED_UNICODE);
			}else{
				echo json_encode("ok",JSON_UNESCAPED_UNICODE);
			}
			//关闭连接
			$this->conn->close();
	   	}
	   	function getlogintel(){
   			$username = isset($_GET['username']) ? $_GET['username'] : '';
			$password = isset($_GET['password']) ? $_GET['password'] : '';
			// 密码md5加密
			$user = md5($username);
			$password = md5($password);
			$sql = "select * from registertel where name='$username' and password='$password'";
			// 获取查询结果
			$result = $this->conn->query($sql);
			$row = $result->fetch_row();
			if($row[0]){
				$res = array(
                    "statue" => "ok",
                    "user" => $user
                );
				echo json_encode($res,JSON_UNESCAPED_UNICODE);
			}else{
				echo json_encode("fail",JSON_UNESCAPED_UNICODE);
			}
			//关闭连接
			$this->conn->close();
	   	}

	   	//王亮路由-------------------------------------------------------------------------------------------
	    function getwarehouseUpdate(){
	   		$id = isset($_REQUEST['id']) ? $_REQUEST['id'] : '';
			$name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
		   	$description = isset($_REQUEST['description']) ? $_REQUEST['description'] : '';
			$count = isset($_REQUEST['count']) ? $_REQUEST['count'] : '';
		   	$size = isset($_REQUEST['size']) ? $_REQUEST['size'] : '';
			$color = isset($_REQUEST['color']) ? $_REQUEST['color'] : '';
		   	$price = isset($_REQUEST['price']) ? $_REQUEST['price'] : '';
	   		//查看id是否已经存在
	   		$sql = "select id from productlist where id='$id'";
	   		$result = $this->conn->query($sql);
	   		if($result->num_rows < 0){
                echo json_encode("无数据",JSON_UNESCAPED_UNICODE);
        	}else{
		      	$sql1 = "update productlist set commodityname = '$name',description = '$description', count = '$count', sizetype = '$size', colortype = '$color', price = '$price' where id=$id";
			    $result2 = $this->conn->query($sql1);
		  		if ($result2) {
                	echo json_encode("ok",JSON_UNESCAPED_UNICODE);
				} else {
				    echo json_encode("fail",JSON_UNESCAPED_UNICODE);
				}
        	}
			//关闭连接
			$this->conn->close();
	   	}

	   function	getwarehousedelete(){
	   		$id = isset($_REQUEST['id']) ? $_REQUEST['id'] : '';
	   		//查看id是否已经存在
	   		$sql = "DELETE FROM productlist where id=$id;";
	   		$result = $this->conn->query($sql);
	   		if($result){
                echo json_encode("ok",JSON_UNESCAPED_UNICODE);
	        }else{
	      		echo json_encode("fail",JSON_UNESCAPED_UNICODE);
	        }
			//关闭连接
			$this->conn->close();
	   	}

	   function	getsearch(){
	   		$data = isset($_REQUEST['data']) ? $_REQUEST['data'] : '';
	   		$pageNo = isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;
            $qty = isset($_REQUEST['pageSize']) ? $_REQUEST['pageSize'] : 10;
	   		//查看id是否已经存在

	   		$num = ($pageNo - 1) * $qty;
                $sql1 = "select sql_calc_found_rows * from productlist where concat(id,commodityname,description,count,sizetype,colortype,price) like '%$data%' limit $num , $qty ; ";
                $sql2 = "select found_rows() as rowsCount";
                // 获取查询结果
                $result1 = $this->conn->query($sql1);
                $result2 = $this->conn->query($sql2);
                $row1 = $result1->fetch_all(MYSQLI_ASSOC);
                $row2 = $result2->fetch_all(MYSQLI_ASSOC);
                $res = array(
                    "data" => $row1,
                    "total" => $row2
                );
                echo json_encode($res,JSON_UNESCAPED_UNICODE);
			//关闭连接
			$this->conn->close();
	   	}


	   	function posttianjia(){
	   		include "fileupload.php";
		    $array = '';
			$fileName  = '';
		    if(isset($_FILES)){
		        //实例化上传插件
		        $uploadFileObject = new FileUpload();
		        // $uploadFileObject->path = "upload";//文件存放目录
		        // uploadFileObject.allowtype =
		        $uploadFileObject->allowtype = array('jpg','gif','png','jpeg', 'txt');//可以不设置，类中有默认类型
		        // $uploadFileObject->maxsize = "100000000";//可以不设置，类中有默认
		        //调用上传方法开始上传文件，上传的文件保存到 file 文件夹
		        //第一个参数为提交的 file 元素名称，第二个参数为要上传的文件夹名称
		        $uploadFileObject->upload("file", "img");
		        //获取上传结果
		        $returnStatus = $uploadFileObject->getErrorMsg();
		        if(empty($returnStatus)){//returnStatus错误信息数据
		            //成功
		            $fileName = $uploadFileObject->getFileName();
		        } else {
		            //失败
		        	$array = array(
		                "status"=> false,
		                "fileName"=> "",
		                "message" => $returnStatus
		            );
		            $array = json_encode($array, JSON_UNESCAPED_UNICODE);
		        }
		    }
			$name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
		   	$description = isset($_REQUEST['description']) ? $_REQUEST['description'] : '';
			$count = isset($_REQUEST['count']) ? $_REQUEST['count'] : '';
		   	$size = isset($_REQUEST['size']) ? $_REQUEST['size'] : '';
			$color = isset($_REQUEST['color']) ? $_REQUEST['color'] : '';
		   	$price = isset($_REQUEST['price']) ? $_REQUEST['price'] : '';
		   	$fileName = "/api/img/".$fileName;
	   		$sql = "insert into productlist (commodityname,imgurl,description,count, sizetype,colortype, price) values ('$name','$fileName','$description','$count','$size', '$color', '$price')";
	   		$result = $this->conn->query($sql);
            if($result){
                echo json_encode("ok",JSON_UNESCAPED_UNICODE);
            }else{
                echo json_encode("fail",JSON_UNESCAPED_UNICODE);
            }
	   	}

		function getfengye(){
	        $pageNo = isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;
            $qty = isset($_REQUEST['pageSize']) ? $_REQUEST['pageSize'] : 10;
         	//查看用户名是否已经存在
            $sql = "select * from productlist ";
            $result = $this->conn->query($sql);
            if($result->num_rows < 0){
                echo json_encode("无数据",JSON_UNESCAPED_UNICODE);
            }else{
                $num = ($pageNo - 1) * $qty;
                $sql1 = "select sql_calc_found_rows * from productlist limit $num , $qty ; ";
                $sql2 = "select found_rows() as rowsCount";
                // 获取查询结果
                $result1 = $this->conn->query($sql1);
                $result2 = $this->conn->query($sql2);
                $row1 = $result1->fetch_all(MYSQLI_ASSOC);
                $row2 = $result2->fetch_all(MYSQLI_ASSOC);
                $res = array(
                    "data" => $row1,
                    "total" => $row2
                );
                echo json_encode($res,JSON_UNESCAPED_UNICODE);
            }
            //释放查询内存(销毁)
			$result->free();
			//关闭连接
			$this->conn->close();
	   	}


	   // 任思明路由-------------------------------------------------------------------------------------------
       function gethistory(){
            $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
            $sql = "select * from history where name='$name'";
            $result = $this->conn->query($sql);
            if($result->num_rows <= 0){
                $sql1 = "insert into history (name,qty) values ('$name','1')";
                $result1 = $this->conn->query($sql1);
                if($result1){
                    echo json_encode("ok",JSON_UNESCAPED_UNICODE);
                }else{
                    echo json_encode("fail1",JSON_UNESCAPED_UNICODE);
                }
            }else{
                // 获取查询结果
                $sql2 = "update history set qty=qty+1 where name='$name'";
                $result2 = $this->conn->query($sql2);
                if($result2){
                    echo json_encode("ok",JSON_UNESCAPED_UNICODE);
                }else{
                    echo json_encode("fail2",JSON_UNESCAPED_UNICODE);
                }
            }
            //关闭连接
            $this->conn->close();
        }


	   function getSalingUpdate(){
		   		$id = isset($_REQUEST['id']) ? $_REQUEST['id'] : '';
				$name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
			   	$description = isset($_REQUEST['description']) ? $_REQUEST['description'] : '';
				$type = isset($_REQUEST['type']) ? $_REQUEST['type'] : '';
			   	$size = isset($_REQUEST['size']) ? $_REQUEST['size'] : '';
			   	$price = isset($_REQUEST['price']) ? $_REQUEST['price'] : '';
                $supplier = isset($_REQUEST['supplier']) ? $_REQUEST['supplier'] : '';
		   		//查看id是否已经存在
		   		$sql = "select id from onsaleproduct where id='$id'";
		   		$result = $this->conn->query($sql);
		   		if($result->num_rows < 0){
	                echo json_encode("无数据",JSON_UNESCAPED_UNICODE);
	        	}else{
			      	$sql1 = "update onsaleproduct set commodityname = '$name',description = '$description',  type = '$type', price = '$price', supplier = '$supplier' where id='$id'";
				    $result2 = $this->conn->query($sql1);
			  		if ($result2) {
	                	echo json_encode("ok",JSON_UNESCAPED_UNICODE);
					} else {
					    echo json_encode("fail",JSON_UNESCAPED_UNICODE);
					}
	        	}
				// //关闭连接
				$this->conn->close();
		   	}


		function getRsmfengye(){
             $condition = isset($_REQUEST['condition']) ? $_REQUEST['condition'] : '';
             $text  = isset($_REQUEST['text']) ? $_REQUEST['text'] : '';
             $pageNo = isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;
             $qty = isset($_REQUEST['pageSize']) ? $_REQUEST['pageSize'] : 10;
          	// echo "$qty";
          	//查看是否已经存在
		    $sql = "select * from onsaleproduct ";
		    $result = $this->conn->query($sql);
            $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : '';
            //查看是否已经存在
            $sql3 = "select * from onsaleproduct where id='$id'";
            // 获取查询结果mysql_query() 函数。该函数用于向 MySQL 连接发送查询或命令
            $result3 = $this->conn->query($sql3);
		    if($result->num_rows < 0){
		        echo json_encode("fail",JSON_UNESCAPED_UNICODE);
		    }else{
            	if($condition===''&&$id===''){
	                 $num = ($pageNo - 1) * $qty;
	                 $sql1 = "select sql_calc_found_rows * from onsaleproduct limit $num , $qty ; ";
	                 $sql2 = "select found_rows() as rowsCount";
	                 // 获取查询结果mysql_query() 函数。该函数用于向 MySQL 连接发送查询或命令
	                 $result1 = $this->conn->query($sql1);
	                 $result2 = $this->conn->query($sql2);
					// 使用查询结果集
	                 $row1 = $result1->fetch_all(MYSQLI_ASSOC);
	                 $row2 = $result2->fetch_all(MYSQLI_ASSOC);
	                 $res = array(
	                     "data" => $row1,
	                     "total" => $row2,
	                 );
	                 echo json_encode($res,JSON_UNESCAPED_UNICODE);
                 }else if($condition != '' && $id=== '' ){
  		             $num = ($pageNo - 1) * $qty;
	                 $sql1 = "select * from onsaleproduct where $condition like '%$text%' limit $num , $qty ";
	                 $sql2 = "select found_rows() as rowsCount";
		             // 获取查询结果mysql_query() 函数。该函数用于向 MySQL 连接发送查询或命令
	                 $result1 = $this->conn->query($sql1);
	                 $result2 = $this->conn->query($sql2);
					// 使用查询结果集
	                 $row1 = $result1->fetch_all(MYSQLI_ASSOC);
	                 $row2 = $result2->fetch_all(MYSQLI_ASSOC);
	                  $res = array(
	                     "data" => $row1,
	                     "total" => $row2,
	                 );
	                 echo json_encode($res,JSON_UNESCAPED_UNICODE);
                     }else  if($condition===''&&$id!=''){

     	        		$sql4 = "DELETE FROM onsaleproduct where id='$id'";

     	        		$result4 = $this->conn->query($sql4);
     	        		if ($result4) {

     	        		 echo  json_encode('ok',JSON_UNESCAPED_UNICODE);

        			} else {
 	        			echo  json_encode("fail",JSON_UNESCAPED_UNICODE);
 	        		}
                }
            }
 		}

	   	function getRgetmorder(){
	   		$sql = "SELECT * FROM morder WHERE STATUS = '已完成'";
	   		$result = $this->conn->query($sql);
	   		$row = $result->fetch_all(MYSQLI_ASSOC);
	   		echo json_encode($row,JSON_UNESCAPED_UNICODE);
	   	}

	   	//唐湖金--------------------------------------------------------------
	   	function getTgetmorder(){
	   		$sql = "SELECT * FROM morder WHERE STATUS = '未完成'";
	   		$result = $this->conn->query($sql);
	   		$row = $result->fetch_all(MYSQLI_ASSOC);
	   		echo json_encode($row,JSON_UNESCAPED_UNICODE);
	   	}
	   	function getTgetmorderwan(){
	   		$sql = "SELECT * FROM morder WHERE STATUS = '已完成'";
	   		$result = $this->conn->query($sql);
	   		$row = $result->fetch_all(MYSQLI_ASSOC);
	   		echo json_encode($row,JSON_UNESCAPED_UNICODE);
	   	}
	   	function getTsetmorder(){
	   		 $orderId = isset($_REQUEST['orderId']) ? $_REQUEST['orderId'] : '';
             $status  = isset($_REQUEST['status']) ? $_REQUEST['status'] : '';
	   		$sql = "update morder set status = '$status' where orderId='$orderId'";
	   		$result = $this->conn->query($sql);
	   		if ($result){
        		 echo  json_encode('ok',JSON_UNESCAPED_UNICODE);
			}else{
    			echo  json_encode("fail",JSON_UNESCAPED_UNICODE);
    		}
	   	}
	   	function getTdeletmorder(){
	   		 $orderId = isset($_REQUEST['orderId']) ? $_REQUEST['orderId'] : '';
	   		$sql = "DELETE FROM morder where orderId='$orderId'";
	   		$result = $this->conn->query($sql);
	   		if ($result){
        		 echo  json_encode('ok',JSON_UNESCAPED_UNICODE);
			}else{
    			echo  json_encode("fail",JSON_UNESCAPED_UNICODE);
    		}
	   	}

	   	function getTfahuomorder(){
	   		$sql = "SELECT * FROM morder WHERE STATUS = '已发货'";
	   		$result = $this->conn->query($sql);
	   		$row = $result->fetch_all(MYSQLI_ASSOC);
	   		echo json_encode($row,JSON_UNESCAPED_UNICODE);
	   	}


		function __construct($methods, $url, $params){
			require('conn.php');
			$this->methods = $methods;
			$this->url = $url;
			$this->params = $params;
			$this->conn = $conn;
		}
	}
?>
