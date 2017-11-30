import React from 'react';
import {connect} from 'react-redux';
import * as ZhifuAction from './zhifuAction';
import $ from 'jquery';
import {Router, Route, Link, hashHistory} from 'react-router';
import httpAjax from "superagent"
import http from './../../../../../common.js'
import FooterComponent from '../../../footer/footComponent';
// import PopupComponent from '../popup/popupComponent';
import { Checkbox } from 'antd';

import './zhifu.scss';
var ZhifuComponent = React.createClass({
	getInitialState:function(){
		return{
			'dataset':''
		}
	},
	componentWillMount(){
			//loading模块
			// this.setState({showLoading:true});
            var api = http.url2+'Tgetmorder';
			httpAjax.get(api).then((res) => {
				var data1 = JSON.parse(res.text);
				this.setState({dataset:data1});
				// this.props.getZhifuMsg(data1);
				// console.log(22,JSON.parse(res.text));
				// this.setState({goodTypeList:JSON.parse(res.text),showLoading:false});
				// document.querySelector('#leftMenu li').click();
			});
	},
	change:function(id){

		var data ={
			orderId: id,
			status:'已完成'
		}
        var api = http.url2 + 'Tsetmorder';
		httpAjax.get(api, data).then((res) => {
			var result = JSON.parse(res.text);
			if(result == 'ok'){
				this.state.dataset.map((item, idx)=>{
					if(item.orderId == id){
						this.state.dataset.splice(idx,1);
						this.setState({dataset:this.state.dataset});
						return ;
					}
				})
			}
		});
	},
	render:function (){

		return (
			<div id="box">
				<div id="zhifuheader">
					<h1>
					    <Link to="/my">
					        <i className="el-icon-arrow-left"></i>
					    </Link>
					    待支付
					</h1>
				</div>
				<div id="zhifucontent">

					{
						(this.state.dataset ? this.state.dataset : []).map((item, idx)=>{
							var totals = 0;
							var content = eval("(" + item.ordercontent + ")");
							return <ul key={idx}>
										<div  className="zhifucontent_top">
											<Checkbox ></Checkbox>
											<p>等待买家付款</p>
										</div>

								{

									content.map((val,idx) =>{
										var total = (val.price* val.num).toFixed(2);
										totals += total*1;
										return 	<li key={'li'+idx}>

													<div className="zhifucontent_center">
														<div className="image">
															<img src={http.url+val.imgurl}/>
														</div>
														<div className="text">
															<p>{val.name}</p>
															<p>颜色分类：{val.color}</p>
															<span className="baozang">七天退换</span>
														</div>
														<div className="prices">
															<del>
																<p>￥{val.price}</p>
															</del>
															<p>￥{val.price}</p>
															<p>&times;{val.num}</p>
														</div>
													</div>

													<p className="gong">共{val.num}件商品，合计{total*1}元</p>
												</li>
									})
								}
									<div className="zhifucontent_bottom">

										<div className="bottom">
											<button>更多</button>
											<button>联系卖家</button>
											<button key={'btn_cancel'+idx} onClick={this.props.cancelOrder.bind(this, item.orderId)}>取消订单</button>
											<button key={'button'+idx} onClick={this.change.bind(this, item.orderId)}>立即付款</button>
										</div>

									</div>
								</ul>

						})
					}

				</div>

				<div>
					<FooterComponent/>
				</div>
			</div>
		)
	}
})
var mapState = function(state){
	return {
		dataset:state.zhifu.dataset || {},
		pay: state.zhifu.pay || '',
		popup:state.zhifu.popup,
		totals:state.zhifu.totals
	}
}
export default connect(mapState, ZhifuAction)(ZhifuComponent);
