import React from 'react';
import {connect} from 'react-redux';

import * as myAction from './myAction';
import {Router, Route, Link, hashHistory, IndexRoute} from 'react-router';

import './my.scss'
import './../../assets/base.scss'

import FootComponent from './../footer/footComponent'
import HeadComponent from './../header/headComponent'
import $ from 'jquery'
class MyComponent extends React.Component{
    componentDidMount(){
        this.props.Init();
        $('a.shezhi').css({'color':'#fff','font-size':'24px','position':'absolute','top':'16px','right':'18px'});
    }
    render(){
        return (
            <div id="box">
                <div className="classifyHead">
                <h1><Link to="/"><i className="el-icon-arrow-left"></i></Link>个人中心</h1>
                <Link to="shezhi" className="shezhi">
                    <i className="glyphicon glyphicon-cog"></i>
                </Link>
                </div>
                <div id="MyMain">
                    <div className="MyTop">
                    <Link to="login"><img src="./../../../../../static/img/touxiang.jpg" /></Link>
                        <p>
                            <span>我的名字</span>
                            <span>修改账户信息<i className="glyphicon glyphicon-edit"></i></span>
                        </p>
                    </div>
                    <div className="main">
                        <ul className="topUl">
                            <Link to="zhifu"><li><i className="glyphicon glyphicon-credit-card"></i><span>待支付</span></li></Link>
                            <Link to="fahuo"><li><i className="glyphicon glyphicon-gift"></i><span>待发货</span></li></Link>
                            <Link to="shouhuo"><li><i className="glyphicon glyphicon-folder-open"></i><span>待收货</span></li></Link>
                            <Link to="tuikuan"><li><i className="glyphicon glyphicon-record"></i><span>退款</span></li></Link>
                            <Link to="tuihuo"><li><i className="glyphicon glyphicon-refresh"></i><span>退货</span></li></Link>
                        </ul>  
                        <div className="module">
                            <ul>
                            <Link to="order"><li><i className="glyphicon glyphicon-list-alt"></i><span>全部订单</span><i className="glyphicon glyphicon-menu-right right"></i></li></Link>
                            <Link to="shoucang"><li><i className="glyphicon glyphicon-heart shou"></i><span>我的收藏</span><i className="glyphicon glyphicon-menu-right right"></i></li></Link>
                            <Link to="pingjia"><li><i className="glyphicon glyphicon-star pingjia"></i><span>我的评价</span><i className="glyphicon glyphicon-menu-right right"></i></li></Link>
                            <Link to="user"><li><i className="glyphicon glyphicon-user user"></i><span>个人资料</span><i className="glyphicon glyphicon-menu-right right"></i></li></Link>
                            <Link to="kefu"><li><i className="glyphicon glyphicon-comment kefu"></i><span>联系客服</span><i className="glyphicon glyphicon-menu-right right"></i></li></Link>
                            </ul>
                        </div>
                    </div>
                </div>
                <FootComponent></FootComponent>
            </div>
        )
    }
}
const mapStateToProps = function(state){
    return {
       
    }
}
export default connect(mapStateToProps, myAction)(MyComponent)