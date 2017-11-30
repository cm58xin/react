import React from 'react';
import {connect} from 'react-redux';
import * as aboutourAction from './aboutourAction';
import {Router, Route, Link, hashHistory, IndexRoute} from 'react-router';

import FooterComponent from '../../../footer/footComponent';
import './aboutour.scss';
var AboutourComponent = React.createClass({
	render:function(){
		return (
			<div id="box">
				<div id="box">
				    <div className="classifyHead">
				        <h1>
				            <Link to="/shezhi">
				                <i className="el-icon-arrow-left"></i>
				            </Link>
				            设置
				        </h1>
				    </div>
				    <div className="aboutourcontent">
				        <ul>
				            <li className="li1">
				                <Link to="/xiugaigerenxinxi">
				                  	<span>给我评价</span>
				                    <i className="el-icon-arrow-right"></i>
				                </Link>
				            </li>
				            <li>
				                <Link to="/xiugaigerenxinxi">
				                    <span>版权信息</span>
				                    <i className="el-icon-arrow-right"></i>
				                    
				                </Link>
				          
				            </li>
				            <li className="li2">
				                <Link to="/xiugaigerenxinxi">
				                    <span>软件许可说明书</span>
				                    <i className="el-icon-arrow-right"></i>   
				                </Link>
				               
				            </li>
				            <li>
				                <Link to="/xiugaigerenxinxi">
				                    <span>特别说明</span>
				                    <i className="el-icon-arrow-right"></i>
				                </Link>
				               
				            </li>
				            <li>
				                <Link to="/xiugaigerenxinxi">
				                    <span>平台服务协议</span>
				                    <i className="el-icon-arrow-right"></i>
				                </Link>
				            
				            </li>
				            <li>
				                <Link to="/xiugaigerenxinxi">
				                    <span className="li3">隐私权政策</span>
				                    <i className="el-icon-arrow-right"></i>
				                </Link>
				               
				            </li>
				           
				        </ul>
				    </div>
				    <FooterComponent></FooterComponent>
				</div>
			</div>
		)
	}
})

var mapState = function(state){
	return {

	}
}

export default connect(mapState, aboutourAction)(AboutourComponent);