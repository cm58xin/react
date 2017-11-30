import React from 'react';
import {connect} from 'react-redux';
import {Router, Route, Link, hashHistory} from 'react-router';
import * as ShouhuoAction from './ShouhuoAction';
import $ from 'jquery';
import httpAjax from "superagent";
import FooterComponent from '../../../footer/footComponent';
import http from './../../../../../common.js';
import './shouhuo.scss';
var ShouhuoComponent = React.createClass({
    componentDidMount:function(){
        this.props.Init();
    },
    getInitialState:function(){
        return{
            'dataset':''
        }
    },
    componentWillMount(){
        var api = http.url2 + 'Tfahuomorder';
        httpAjax.get(api).then((res) => {
            var data1 = JSON.parse(res.text);
            this.setState({dataset:data1});
        });
    },
    change:function(id){
        var data ={
            orderId: id,
            status:'已收货'
        }
        var api = http.url2 + 'Tsetmorder';

        httpAjax.get(api, data).then((res) => {
            var result = JSON.parse(res.text);
            if(result == 'ok'){
                this.state.dataset.map((item, idx)=>{
                    if(item.orderId == id){
                        this.state.dataset.splice(idx,1);
                        this.setState({dataset:this.state.dataset});
                        alert('收货成功！');
                        return ;
                    }
                })
            }
        });
    },
    render:function (){
        return (
            <div id="box">
                <div id="shouhuoheader">
                    <h1>
                        <Link to="/my">
                            <i className="el-icon-arrow-left"></i>
                        </Link>
                        待收货
                    </h1>
                </div>
                <div id="shouhuocontent">
                    {
                        (this.state.dataset? this.state.dataset : []).map((item, idx)=>{
                            var ordercontent = JSON.parse(item.ordercontent);
                            return  <ul key={'ul'+idx}>
                                        <div  className="shouhuocontent_top">
                                            <p>买家已付款</p>
                                        </div>
                            {
                                ordercontent.map((val, idx) =>{
                                    var total = (val.price*val.num).toFixed(2);
                                    return  <li key={'li'+idx}>
                                                <div className="shouhuocontent_center">
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
                                                <div className="shouhuocontent_bottom">
                                                    <p>共{val.num}件商品，合计{total}元</p>
                                                </div>
                                            </li>
                                })
                            }
                                <div className="bottom">
                                    <button onClick={this.props.Receive.bind(this, item.id)}>延长收货</button>
                                    <button onClick={this.props.Receive.bind(this, item.id)}>查看物流</button>
                                    <button onClick={this.change.bind(this, item.orderId)}>确认发货</button>
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
        popup:true,
        totals:130,
        dataset:state.shouhuo.dataset || {}
    }
}
export default connect(mapState, ShouhuoAction)(ShouhuoComponent);
