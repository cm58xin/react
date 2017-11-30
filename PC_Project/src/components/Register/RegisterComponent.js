import React from 'react';
import {connect} from 'react-redux';
import { DatePicker } from 'antd';
import { Button,Checkbox,Breadcrumb,Icon,Table,message,Input} from 'antd';

var {Router, Route, Link, hashHistory, browserHistory} = require('react-router');

import * as RegisterAction from './RegisterAction';
import './Register.scss'
import './style.css'
import http from "./../../common/common";
import $ from "jquery";
const Search = Input.Search;

class RegisterComponent extends React.Component{
    componentDidMount(){

    }
    register(){
      var params ={
        username:$('#username').val(),
        password:$('#password').val()
      }
      var api = 'http://10.3.137.204:1000/register';
      this.props.Init(api,params).then(response => {
        if(response == '"ok"'){
          alert('您已注册成功，可以登录了');
         location.href="http://localhost:3006/#/login";
        }else {
          alert('很抱歉，注册失败');
        }
      });
    }
    render(){
      return (
        <div id="register">
            <div className="page-container">
                <form>
                <h1>Register</h1>
                    <input type="text" id="username" className="username" placeholder="用户名" />
                    <input type="password" id="password" className="password" placeholder="密码" />
                    <input type="button" name="button" className="register" value="注册" onClick={this.register.bind(this)}/>
                </form>
                <div className="connect">

                    <p>商家后台管理系统注册</p>
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

export default connect(mapStateToProps, RegisterAction)(RegisterComponent)
