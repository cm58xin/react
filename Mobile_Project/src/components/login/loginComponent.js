import React from 'react';
import {connect} from 'react-redux';
import { Input, Icon, Button, message } from 'antd';
import {Router, Route, Link, hashHistory, IndexRoute} from 'react-router';
import $ from 'jquery'


import http from './../../../common.js'
import * as loginAction from './loginAction';
import './login.scss'
import './../../assets/base.scss'
import FootComponent from './../../components/footer/footComponent'

class LoginComponent extends React.Component{
    componentDidMount(){
    	$(".loginMain").find("input").attr("autocomplete","off")
    }
	success(val){
		message.config({top: 130,duration: 2,});
		message.success(val, 2);
	}

    login(){

    	var params ={
            username:$('#username').val(),
            password:$('#password').val()
        }
    	var api = http.url2+'logintel';
		this.props.Init(api,params).then(response => {
			var response = JSON.parse(response)
			if(response.statue == "ok"){
				document.cookie = "user = "+response.user;
				//跳转详情页
			}else{
				this.success("登陆失败，请重新确认密码")
			}

		})
    }
    render(){
        return (
            <div id="box">
                <div id="login">
                    <div className="loginHead">
                        <h1><Link to="my"><i className="el-icon-arrow-left"></i></Link>登录页</h1>
                    </div>
                    <div className="loginMain">
                        <div className="inputDiv">
                            <Input placeholder="输入您的用户名" id = "username" prefix={<Icon type="user" />} />
                            <Input prefix={<Icon type="lock" style={{ fontSize: 13 }} />} id = "password" type="password" placeholder="请输入密码"/>
                            <Button type="primary" className="onBtn" onClick = {this.login.bind(this)}>登录</Button>
                            <p className="links">
                                <Link to="register" className="register">去注册</Link>
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

export default connect(mapStateToProps, loginAction)(LoginComponent)
