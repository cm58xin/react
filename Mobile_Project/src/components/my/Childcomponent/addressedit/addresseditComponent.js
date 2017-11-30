import React from 'react';
import {connect} from 'react-redux';
import * as addresseditAction from './addresseditAction';
import {Router,Route, Link, IndexRoute, hashHistory} from 'react-router';

import FooterComponent from '../../../footer/footComponent';
import './addressedit.scss';

var AddresseditComponent = React.createClass({
	componentDidMount:function(){
		// this.props.Init();
	},
	render:function(){
		console.log(this.props.msg);
		return (
			<div id="box">
				<div id="box">
				    <div className="addressedithead">
				        <h1>
				            <Link to="/address">
				                <i className="el-icon-arrow-left"></i>
				            </Link>
				            编辑地址
				            <span>保存</span>
				        </h1>
				    </div>
				    <div className="addresseditcontent">
				        	{
				        		(this.props.msg).map(function(item, idx){
				        			console.log(item.addresser);
				        			return (<ul>
				        				<li>
				        					<span>联系人</span>
				        					<input type="text" value={item.addresser}/>
				        				</li>
				        				<li>
				        					<span>联系电话</span>
				        					<input type="text" value={item.tel}/>

				        				</li>
				        				<li>
				        					<textarea value={item.address}></textarea>
				        				</li>
				        				<li className="li_last">
				        					删除地址
				        				</li>
				        			</ul>)
				        		})
				        	}
				        	
				    </div>
				    <FooterComponent></FooterComponent>
				</div>
			</div>
		)
	}
})

var mapState = function (state){
	var datamsg = [];
	if(state.address.dataset && state.address.msg){

		var data = state.address.dataset.data;
		var id = state.address.msg.addressId;
		for(var i=0;i<data.length; i++){
			if(data[i].addressId == id){
				datamsg.push(data[i]);
			}
		}
	}
	return{
		dataset:state.address.dataset || {},
		msg:datamsg 
	}
}

export default connect(mapState, addresseditAction)(AddresseditComponent);