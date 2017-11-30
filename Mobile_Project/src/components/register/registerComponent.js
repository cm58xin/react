import React from 'react';
import {connect} from 'react-redux';
import { Input,Icon,Button,message } from 'antd';
import {Router, Route, Link, hashHistory, IndexRoute} from 'react-router';

import * as registerAction from './registerAction';
import './register.scss'
import './../../assets/base.scss'
import $ from 'jquery'
import http from './../../../common.js'
import FootComponent from './../../components/footer/footComponent'
class RegisterComponent extends React.Component{
    componentDidMount(){
    	$(".registerMain").find("input").attr("autocomplete","off")
    }
	blur(){
		if($('#username').val() == ""){
			$("#span1").html("用户名不能为空");
			return false;
		}else{
			$("#span1").html("");
		}
	    if(!/^[a-zA-Z][\w\-]{5,19}$/.test($('#username').val())){
			$("#span1").html("用户名不合法");
			return false;
		}else{
			$("#span1").html("");
		}
		var api = http.url2+'reg';
		var params1 ={
            username:$('#username').val(),
        }
		this.props.Init(api,params1).then(response => {
			if(response == '"fail"'){
				$("#span1").html("用户名已经存在");
			}else{
				$("#span1").html("");
			}
		})
	}
	success(val){
		message.config({top: 130,duration: 2,});
		message.success(val, 2);
	}
    register(){
        var params ={
            username:$('#username').val(),
            password:$('#password').val()
        }
        var _username = params.username;
		if(!/^[a-zA-Z][\w\-]{5,19}$/.test(_username)){
			$("#span1").html("*用户名不合法，请重新确认")
			return false;
		}else{
			$("#span1").html("")
		}
		var _password = params.password;
		if(!/^\S{6,20}$/.test(_password)){
			$("#span2").html("*密码不合法，请重新确认")
			return false;
		}else{
			$("#span2").html("")
		}
			var api = http.url2+'registertel';
	        this.props.Init(api,params).then(response => {
	            if(response == '"ok"'){
	            	this.success("注册成功");
	                $('#username').val('');
	                $('#password').val('');
	            }else {
	               this.success("注册失败");
	            }
	        });
    }
    render(){
        return (
            <div id="box">
                <div id="register">
                    <div className="registerHead">
                        <h1><Link to="my"><i className="el-icon-arrow-left"></i></Link>注册页</h1>
                    </div>
                    <div className="registerMain">
                        <div className="inputDiv">

                            <Input placeholder="必须以字母开头,长度6-20"  id="username"  prefix={<Icon type="user" />} onBlur = {this.blur.bind(this)}/>
                            <span id="span1"></span>
                            <Input prefix={<Icon type="lock" style={{ fontSize: 13 }} />} id = "password" type="password" placeholder="长度6-20,不能包含空格"/>
                            <span id="span2"></span>
                            <Button type="primary" className="onBtn" onClick={this.register.bind(this)}>注册</Button>
                            <p className="links">
                                <Link to="login" className="forget">已有账号，去登录</Link>
                            </p>
                        </div>

                    </div>
                </div>
                <FootComponent />
            </div>
        )
    }
}
const mapStateToProps = function(state){
    return {

    }
}

export default connect(mapStateToProps, registerAction)(RegisterComponent)
