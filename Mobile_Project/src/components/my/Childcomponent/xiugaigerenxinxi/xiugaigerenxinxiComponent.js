import React from 'react';
import {connect} from 'react-redux';
import { Avatar } from 'antd';

import * as xiugaigerenxinxiAction from './xiugaigerenxinxiAction';
import {Router, Route, Link, hashHistory, IndexRoute} from 'react-router';



import FooterComponent from '../../../footer/footComponent';
import './xiugaigerenxinxi.scss'
class XiugaigerenxinxiComponent extends React.Component{
    componentDidMount(){
        this.props.Init();
    }
    render(){
        return (
            <div id="box">
                <div className="classifyHead">
                    <h1>
                        <Link to="/shezhi">
                            <i className="el-icon-arrow-left"></i>
                        </Link>
                        修改个人信息
                    </h1>
                </div>
                <div className="shezhicontent">
                    <ul>
         
                        <li className="li2">
                            <span>用户头像</span>
                            <i className="el-icon-arrow-right"></i>
                        </li>
                        <li>
                            <span>用户名</span>
                            <i className="el-icon-arrow-right"></i>
                        </li>
                        <li>
                            <span>昵称</span>
                            <i className="el-icon-arrow-right"></i>
                        </li>
                        <li>
                            <span>个人说明</span>
                            <i className="el-icon-arrow-right"></i>
                        </li>
                        <li>
                            <span>生日</span>
                            <i className="el-icon-arrow-right"></i>
                        </li>
                      
                    </ul>
                </div>
                <FooterComponent></FooterComponent>
            </div>
        )
    }
}
const mapStateToProps = function(state){
    return {
       
    }
}
export default connect(mapStateToProps, xiugaigerenxinxiAction)(XiugaigerenxinxiComponent)