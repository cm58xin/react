import React from 'react';
import {connect} from 'react-redux';
import * as addressAction from './addressAction';
import {Router,Route, Link, IndexRoute, hashHistory} from 'react-router';

import FooterComponent from '../../../footer/footComponent';
import './address.scss';

var AddressComponent = React.createClass({
	componentDidMount:function(){
		this.props.Init();
	},
	render:function(){
		return (
			<div id="box">
				<div id="box">
				    <div className="classifyHead">
				        <h1>
				            <Link to="/shezhi">
				                <i className="el-icon-arrow-left"></i>
				            </Link>
				            管理收货地址
				        </h1>
				    </div>
				    <div className="addresscontent">
				        <ul>
				        {
				        	(this.props.dataset.data? this.props.dataset.data : []).map((item, idx)=>{
				        		return <li>
				        			  		<div className="address_top">
				        			  			<p className="address_box p1">
				        			  				<span>{item.addresser}</span>
				        			  				<span>{item.tel}</span>
				        			  			</p>
				        			  			<p className="p2">
				        			  				{item.address}
				        			  			</p>
				        			  		</div>
				        			  		<div className="address_bottom address_box">
				        			  			<div>
				        			  				<input type="checkbox"/>
				        			  				默认地址
				        			  			</div>
				        			  			<div>
				        			  				<Link to="/addressedit">
				        			  					<span onClick={this.props.edit.bind(this, item.addressId)}>编辑</span>
				        			  				</Link>
				        			  				<span>删除</span>
				        			  			</div>
				        			  		</div>
				        				</li>
				        	})
				        	 
				        }
				        	
				          
				           
				        </ul>
				    </div>
				    <FooterComponent></FooterComponent>
				</div>
			</div>
		)
	}
})

var mapState = function (state){

	return{
		dataset:state.address.dataset || {}
	}
}

export default connect(mapState, addressAction)(AddressComponent);