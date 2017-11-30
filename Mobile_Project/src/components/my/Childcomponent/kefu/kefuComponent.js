import React from 'react'
import {connect} from 'react-redux'
import * as kefuAction from './kefuAction'
import {Router,Route,Link,hashHistory} from 'react-router'
import {Icon} from 'antd'
import './kefu.scss'
class KefuComponent extends React.Component{
	// componentDidMount(){
	// 	this.props.Init()
	// }
	render(){
		return(
				<div id="box">
					<header>

		                <h3><Link to="my"><i className="el-icon-arrow-left"></i></Link>联系客服</h3>
		             	
					</header>

					<div className="kefu_main">

					</div>
					
					<div className="footer">
						<p>
							<Icon type="customer-service" />"
							<input type="text"/>
							<input className="send" type="button" value="发送"/>
						</p>
						
					</div>
				</div>
			)
		
	}
}

const mapStateToProps = function (state){
	return{

	}
}

export default connect(mapStateToProps,kefuAction)(KefuComponent)