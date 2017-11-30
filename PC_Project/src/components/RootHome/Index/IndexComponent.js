import React from 'react';
import {connect} from 'react-redux';

import { Button,Checkbox,Breadcrumb,Icon,Table,message,Input,Select} from 'antd';
var {Router, Route, Link, hashHistory, browserHistory} = require('react-router');

import * as IndexAction from './IndexAction';
import $ from 'jquery';
import './Index.scss'
import './../../../assets/base.scss'
class IndexComponent extends React.Component{
    tuichu(){
         $.get('http://10.3.137.204:1000/loginDeletSession',function(res){
              if(res=='"ok"'){
                 location.href ='http://localhost:3006/#/login';
              }
         })
    }
    componentDidMount(){
         // $.get('http://10.3.137.204:1000/loginSession',function(res){
         //      if(res=='false'){
         //         location.href ='http://localhost:3006/#/login';
         //      }
         // })
    }
    render(){
        return (
            <div id="index">
                <div className="IndexTop">
                    <Breadcrumb><span>当前位置：</span><Breadcrumb.Item href=""><Icon type="home" /><span>主页</span>
                    </Breadcrumb.Item>
                    <Breadcrumb.Item href="/saling"><Icon type="user" /><span>导航菜单</span></Breadcrumb.Item></Breadcrumb>
                    <Link to="register"><Button className="registerTop" icon="user">注册</Button></Link>
                    <Button className="loginTop" icon="poweroff" onClick={this.tuichu}>退出</Button>
                </div>
                <div className="IndexMain">
                    <Link to="home"><div><span><Icon type="home" style={{ fontSize:30, color: '#fff' }} /></span><h3>首页</h3><p>查看导引页
                    </p></div></Link>
                    <Link to="home/saling"><div><span><Icon type="gift" style={{ fontSize:30, color: '#fff' }} /></span><h3>出售中商品</h3><p>查看出售中商品
                    </p></div></Link>
                    <Link to="home/onSale"><div><span><Icon type="line-chart" style={{ fontSize:30, color: '#fff' }} /></span><h3>已出售商品</h3><p>查看已出售商品
                    </p></div></Link>
                    <Link to="home/supplier"><div><span><Icon type="team" style={{ fontSize:30, color: '#fff' }} /></span><h3>供应商</h3><p>查看供应商信息
                    </p></div></Link>
                    <Link to="home/MemberList"><div><span><Icon type="solution" style={{ fontSize:30, color: '#fff' }} /></span><h3>用户列表</h3><p>查看用户列表
                    </p></div></Link>
                    <Link to="home/kefu"><div><span><Icon type="customer-service" style={{ fontSize:30, color: '#fff' }} /></span><h3>客服服务</h3><p>进入客服
                    </p></div></Link>
                </div>
            </div>
        )
    }
}
const mapStateToProps = function(state){
    return {

    }
}

export default connect(mapStateToProps, IndexAction)(IndexComponent)
