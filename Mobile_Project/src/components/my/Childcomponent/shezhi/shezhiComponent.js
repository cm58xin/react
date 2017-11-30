import React from 'react';
import {connect} from 'react-redux';
import { Avatar } from 'antd';

import * as shezhiAction from './shezhiAction';
import {Router, Route, Link, hashHistory, IndexRoute} from 'react-router';

import './shezhi.scss'

import FooterComponent from '../../../footer/footComponent';

class ShezhiComponent extends React.Component{
    componentDidMount(){
        this.props.Init();
    }
    render(){
        return (
            <div id="box">
                <div className="classifyHead">
                    <h1>
                        <Link to="/my">
                            <i className="el-icon-arrow-left"></i>
                        </Link>
                        设置
                    </h1>
                </div>
                <div className="shezhicontent">
                    <ul>
                        <li className="li1">
                            <Link to="/xiugaigerenxinxi">
                                <div>
                                    <Avatar src="../../../../../../static/img/touxiang.jpg"
                                            size="large" />
                                    <span>yaya</span>
                                </div>
                                <i className="el-icon-arrow-right"></i>
                            </Link>
                        </li>
                        <li>
                            <Link to="/address">
                                <span>我的收货地址</span>
                                <i className="el-icon-arrow-right"></i>
                                
                            </Link>
                      
                        </li>
                        <li className="li2">
                            <Link to="/xiugaigerenxinxi">
                                <span>账户与安全</span>
                                <i className="el-icon-arrow-right"></i>   
                            </Link>
                           
                        </li>
                        <li>
                            <Link to="/xiugaigerenxinxi">
                                <span>隐私</span>
                                <i className="el-icon-arrow-right"></i>
                            </Link>
                           
                        </li>
                        <li>
                            <Link to="/xiugaigerenxinxi">
                                <span>通用</span>
                                <i className="el-icon-arrow-right"></i>
                            </Link>
                        
                        </li>
                        <li>
                            <Link to="/xiugaigerenxinxi">
                                <span className="li3">联系客服</span>
                                <i className="el-icon-arrow-right"></i>
                            </Link>
                           
                        </li>
                        <li>
                            <Link to="/aboutour">
                                <span>关于我们</span>
                                <i className="el-icon-arrow-right"></i>
                            </Link>
                           
                        </li>
                        <li>
                            <Link to="/aboutour">
                                <span>退出</span>
                                <i className="el-icon-arrow-right"></i>
                            </Link>
                           
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
export default connect(mapStateToProps, shezhiAction)(ShezhiComponent)