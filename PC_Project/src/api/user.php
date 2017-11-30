<?php

	class User{
//黄敏琼的路由----------------------------------------------------------------
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
//          $sql = "select * from productlist ";
//          $result = $this->conn->query($sql);
//          if($result->num_rows < 0){
                echo json_encode("测试",JSON_UNESCAPED_UNICODE);
//          }else{
                // 获取查询结果
//              $result = $this->conn->query($sql);
//              $row = $result->fetch_all(MYSQLI_ASSOC);
//              echo json_encode($row,JSON_UNESCAPED_UNICODE);
//          }
            //关闭连接
//          $this->conn->close();
        }

  //明经平的路由---------------------------------------------------------------------------
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

//王丽雅路由------------------------------------------------------------------------------------
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
            $sql = "select * from login ";
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
                $password = md5($password);
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
                $sql = "insert into registerTel (name,password,identity) values ('$username','$password','$limits')";
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

//王亮路由--------------------------------------------------------------------------------------------
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

       function getwarehousedelete(){
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

       function getsearch(){
            $data = isset($_REQUEST['data']) ? $_REQUEST['data'] : '';
            //查看id是否已经存在
            $sql = "select * from productlist where concat(id,commodityname,description,count,sizetype,colortype,price) like '%$data%'";
            $result = $this->conn->query($sql);
            if($result->num_rows < 0){
                echo json_encode("无数据",JSON_UNESCAPED_UNICODE);
            }else{
                 $row = $result->fetch_all(MYSQLI_ASSOC);
                 $res = array(
                    "data" => $row
                );
                echo json_encode($res,JSON_UNESCAPED_UNICODE);
            }
            //关闭连接
            $this->conn->close();
        }

        function gettianjia(){
            $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
            $description = isset($_REQUEST['description']) ? $_REQUEST['description'] : '';
            $count = isset($_REQUEST['count']) ? $_REQUEST['count'] : '';
            $size = isset($_REQUEST['size']) ? $_REQUEST['size'] : '';
            $color = isset($_REQUEST['color']) ? $_REQUEST['color'] : '';
            $price = isset($_REQUEST['price']) ? $_REQUEST['price'] : '';

            $sql = "insert into productlist (commodityname,description,count, sizetype,colortype, price) values ('$name','$description','$count','$size', '$color', '$price')";
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

                                 }else if($condition!=''&&$id===''){

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
		// var $post = 19;
		function __construct($methods, $url, $params){
			require('conn.php');
			$this->methods = $methods;
			$this->url = $url;
			$this->params = $params;
			$this->conn = $conn;
		}
	}
?>
