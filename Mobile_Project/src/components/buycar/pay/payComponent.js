import React from 'react';
import {connect} from 'react-redux';
import 'element-theme-default';
import { Checkbox } from 'antd';
import {Link} from 'react-router'
import {Icon} from 'antd'
import * as payAction from './payAction';
import './pay.scss';
import PopupComponent from '../popup/popupComponent';
import './../../../assets/base.scss'
import $ from 'jquery'
import http from './../../../../common.js';

class PayComponent extends React.Component{
    componentWillMount(){
        this.props.Init();
    }
    // componentWillUnmount(){
    //     console.log('remove')
    //     sessionStorage.removeItem('checked');
    // }
    render(){
        return (
            <div id="box">
                <header>
                    <h3><Link to="buycar"><i className="el-icon-arrow-left"></i></Link>确认订单</h3>
                </header>

                <div id="pay_main">

                     {

                        (this.props.checkedPay.length>0 ?

                        <div className="address">
                            <span><Icon type="environment-o" /></span>
                            <p>收货人：<span>mmm</span><span>12334556796433</span></p>
                            <p>收货地址：<span>广东省广州市天河区元岗横路智慧兆联创意产业园E座</span></p>

                        </div>

                          :'订单空空如也，赶紧去下单吧！！！'  )
                     }

                    {
                        (this.props.checkedPay || []).map(function(obj,idx){

                            return(
                            <ul>
                                <li>
                                    <img src={http.url+obj.imgurl}/>
                                    <div className="order_r">
                                        <p><h4>{obj.name}</h4></p>
                                        <p><span>尺码：{obj.sizetype}</span></p>
                                        <p><span>￥{obj.price}</span><span>x{obj.num}</span></p>
                                    </div>
                                </li>
                                <li>
                                    <p>配送方式：<i className="el-icon-arrow-right"></i><span>快递 免邮</span></p>
                                </li>
                                <li>
                                    <p>小计：<span>￥{obj.num*obj.price}</span></p>
                                    <p>共{obj.num}件商品</p>
                                </li>
                            </ul>
                            )


                        })
                    }



                </div>
                <div className="pat_foot">
                    <p>
                        <span>合计：{this.props.totalPrice}</span>
                        <input type="button" value="提交订单" onClick={this.props.show.bind(this,this)}/>
                    </p>

                </div>

                {
                    (this.props.showing ?

                <div className="fukuan">
                    <div className="fukuan_t"></div>
                    <div className="fukuan_b">
                        <p><span onClick={this.props.close.bind(this)}><Icon type="close" /></span>确认付款<span><Icon type="question-circle-o" /></span></p>
                        <h3>￥{this.props.totalPrice}</h3>
                        <p>支付宝帐号<span>130*******05</span></p>
                        <p>付款方式<span>花呗</span></p>
                        <p><input type="button" value="立即付款" onClick={this.props.pay.bind(this)}/></p>
                    </div>
                </div>
                : '')
                }
            </div>
        )
    }
}

const mapStateToProps = function(state){
    var checked = [];
    state.buycar.checked = [];
    var buycarChecked = sessionStorage.getItem('checked');
    var buycarDataset = sessionStorage.getItem('dataset');
    if(JSON.parse(buycarChecked)){

        (JSON.parse(buycarDataset) || []).forEach(function(item,idx){
            JSON.parse(buycarChecked).forEach(function(i,index){
                if(i == idx){
                    checked.push(item)
                }
            })
        })
    }

    sessionStorage.setItem('order',JSON.stringify(checked));
    var totals = sessionStorage.getItem('totalPrice');
    state.buycar.totalPrice = 0;
    return {
        totalPrice:totals,
        checkedPay:checked || [],
        Orders:state.pay.orders,
        showing:state.pay.show || false
    }
}

export default connect(mapStateToProps, payAction)(PayComponent);
