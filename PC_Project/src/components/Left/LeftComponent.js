import React from 'react';
import {connect} from 'react-redux';
import $ from 'jquery';
import SpinnerComponent from '../spinner/spinner';

var {Router, Route, Link, hashHistory, browserHistory} = require('react-router');

import { Menu, Icon, Button } from 'antd';
const SubMenu = Menu.SubMenu;

import * as LeftAction from './LeftAction';
import './../../assets/base.scss'
import './Left.scss'
class LeftComponent extends React.Component{

    constructor(props) {
      super(props);
      this.state = {
        nowtime: '',
        nowtime1:''
      };
  }

    componentDidMount(){

      var cc=function(){
              var  _time = new Date();

              var year = _time.getFullYear();

              var month =   _time.getMonth()+1;

              var day =  _time.getDate();

              var  _nowtime=year+'-'+month+'-'+day;


              var Hours = _time.getHours();
              var Minutes =  _time.getMinutes();
              var seconds = _time.getSeconds();

             if(seconds<10){
                 seconds="0"+seconds;
             }
               if(Minutes<10){
                 Minutes="0"+Minutes;
             }
              if(Hours<10){
                 Hours="0"+Hours;
             }

              var _nowtime1=Hours+':'+Minutes+':'+seconds;

             this.setState({nowtime:_nowtime});
             this.setState({nowtime1:_nowtime1});
       }.bind(this)

      cc()
      //每间隔1s执行一次cc()方法
      setInterval(cc, 1000);
      $('.ant-menu.ant-menu-inline.ant-menu-light.ant-menu-root').css({'width':'150px'})
      $('.ant-menu-submenu-title').css({'height':'30px'})
      $('.ant-menu.ant-menu-inline.ant-menu-sub').css({'margin':'0px'});
    }

    dd(){

      $('.ant-menu-item').mouseout(function(event) {
             // console.log(event.target)
             var aa=event.target;
               $(aa).parent('li').css({"background":"#292A33"})
      })
    }


    render(){
        return (
            <div id="Left">
            <SpinnerComponent/>
                <div className="leftTop">
                    <p className="time">
                        <span>{this.state.nowtime}</span>
                        <span>{this.state.nowtime1}</span>
                    </p>
                </div>
                <div className="LeftMain">
                  <Link to="home"><p className="logo"><span>ECOM</span></p></Link>
                    <p>商家管理系统</p>
                    <Menu
                      style={{ width: 140 }}
                      onClick={this.dd}
                      defaultOpenKeys={['sub1']}
                      mode="inline">
                      <SubMenu key="sub1" title={<span><Icon type="appstore-o" /><span>商品管理</span></span>}>
                      <Menu.Item key="1"><Link to="home/saling">出售中</Link></Menu.Item>
                      <Menu.Item key="2"><Link to="home/warehouse">仓库管理</Link></Menu.Item>
                      </SubMenu>
                      <SubMenu key="sub2" title={<span><Icon type="credit-card" /><span>交易管理</span></span>}>
                      <Menu.Item key="5"><Link to="home/onSale">已出售</Link></Menu.Item>
                      <Menu.Item key="6"><Link to="home/pingjia">用户评价</Link></Menu.Item>
                      <Menu.Item key="6"><Link to="home/orderList">订单列表</Link></Menu.Item>
                      </SubMenu>
                      <SubMenu key="sub3" title={<span><Icon type="team" /><span>供应商管理</span></span>}>
                      <Menu.Item key="9"><Link to="home/supplier">供应商信息</Link></Menu.Item>
                      </SubMenu>
                      <SubMenu key="sub4" title={<span><Icon type="user" /><span>用户管理</span></span>}>
                      <Menu.Item key="9"><Link to="home/MemberList">用户列表</Link></Menu.Item>
                      </SubMenu>
                      <SubMenu key="sub5" title={<span><Icon type="customer-service" /><span>客服服务</span></span>}>
                      <Menu.Item key="12"><Link to="home/onLine">在线客服</Link></Menu.Item>
                      </SubMenu>
                      <SubMenu key="sub6" title={<span><Icon type="setting" /><span>权限设置</span></span>}>
                      <Menu.Item key="13"><Link to="home/Limit">用户权限</Link></Menu.Item>
                      </SubMenu>
                    </Menu>
                </div>
            </div>
        )
    }
}
const mapStateToProps = function(state){
    return {

    }
}

export default connect(mapStateToProps, LeftAction)(LeftComponent)
