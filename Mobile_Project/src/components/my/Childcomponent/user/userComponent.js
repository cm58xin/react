import React from 'react';
import {connect} from 'react-redux';
import {Router, Route, Link, hashHistory, IndexRoute} from 'react-router';
import { DatePicker } from 'antd';

import * as userAction from './userAction';
import FootComponent from './../../../footer/footComponent'

import './user.scss'
const { MonthPicker, RangePicker } = DatePicker;
class UserComponent extends React.Component{
    // componentDidMount(){
    //     this.props.Init();
    // }
    
    

    onChange(date, dateString) {
      console.log(date, dateString);
    }

    render(){
        return (
        	<div id="box">
        		<header>
                    <h3><Link to="my"><i className="el-icon-arrow-left"></i></Link>个人资料</h3>
             	</header>
                <div className="user_main">
                    <ul>

                        <li>
                            <span>头像</span>
                            <p><img src="./../../../../../static/img/touxiang.jpg"/><i className="el-icon-arrow-right"></i></p>
                        </li>
                        <li>
                            <span>昵称</span>
                            <p><span>我的名字</span><i className="el-icon-arrow-right"></i></p>
                        </li>
                        <li>
                            <span>收货地址</span>
                            <p><span>广东省天河区创意产业园</span><i className="el-icon-arrow-right"></i></p>
                        </li>
                        <li>
                            <span>生日</span>
                            <p><DatePicker onChange={this.props.onChange} /><i className="el-icon-arrow-right"></i></p>
                        </li>
                         
                    </ul>
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
export default connect(mapStateToProps, userAction)(UserComponent)