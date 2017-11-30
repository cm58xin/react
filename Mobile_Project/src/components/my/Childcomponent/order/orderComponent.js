import React from 'react';
import {connect} from 'react-redux';
import {Router, Route, Link, hashHistory, IndexRoute} from 'react-router';

import * as orderAction from './orderAction';
import FootComponent from './../../../footer/footComponent'
import http from './../../../../../common.js'
import './order.scss'

class OrderComponent extends React.Component{
    componentDidMount(){
        var  api = http.url2+'Morder';

        this.props.Init(api);
    }
    render(){
        return (
        	<div id="box">
        		<header>
                    <h3><Link to="my"><i className="el-icon-arrow-left"></i></Link>我的订单</h3>
             	</header>
                <div className="order_main">

                     {
                        (this.props.datasetOrder || []).map(function(item,idx){

                            var content = eval("("+item.ordercontent+")");
                            return(
                                    <ul key={idx}>
                                        <p>订单编号：{item.orderId}<span>{item.status}</span></p>

                                        {
                                            content.map(function(obj,i){

                                                return(
                                                        <li>
                                                            <img src={http.url+obj.imgurl}/>
                                                            <div className="order_r">
                                                                <p><h4>{obj.name}</h4><span>￥{obj.price}</span></p>
                                                                <p>颜色：{obj.colortype}</p>
                                                                <p><p>尺码：{obj.sizetype}</p><span>x{obj.num}</span></p>
                                                            </div>
                                                            <p><span>共{obj.num}件商品&nbsp;&nbsp;</span><span>小计{obj.price*obj.num}元</span></p>
                                                        </li>

                                                    )
                                            })

                                        }

                                    </ul>
                                )




                        })
                    }


                </div>
             	<FootComponent></FootComponent>

        	</div>

        )
    }
}
const mapStateToProps = function(state){
    console.log(state)
    return {
        datasetOrder:state.order.datasetOrder || []
    }
}
export default connect(mapStateToProps, orderAction)(OrderComponent)


