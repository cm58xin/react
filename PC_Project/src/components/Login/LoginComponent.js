import React from 'react';
import {connect} from 'react-redux';
import { DatePicker } from 'antd';
import { Button,Checkbox,Breadcrumb,Icon,Table,message,Input} from 'antd';
var {Router, Route, Link, hashHistory, browserHistory} = require('react-router');

import * as LoginAction from './LoginAction';
import './Login.scss'
import './style.css'
import http from "./../../common/common";
import $ from "jquery";
const Search = Input.Search;

class LoginComponent extends React.Component{
    login(){
      var params ={
        username:$('#username').val(),
        password:$('#password').val()
      }
      var api = 'http://10.3.137.204:1000/login';
      this.props.Init(api,params).then(response => {
        if(response == '"ok"'){
          alert('登录成功！');
          location.href= 'http://localhost:3006/#/home';
        }
        else{
          alert('登录失败');
        }
      });
    }
    render(){
      return (
        <div id="login">
            <div className="page-container">
                <form>
                <h1>Login</h1>
                    <input type="text" id="username" className="username" placeholder="用户名" />
                    <input type="password" id="password" className="password" placeholder="密码" />
                    <input type="button" name="button" className="login" value="登录" onClick={this.login.bind(this)}/>
                </form>
                <div className="connect">
                    <p>商家后台管理系统登录</p>
                </div>
            </div>
        </div>
      )
  }
}
const mapStateToProps = function(state){
    return {

    }
}

export default connect(mapStateToProps, LoginAction)(LoginComponent)
