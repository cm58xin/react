import React from 'react';
import {connect} from 'react-redux';

import $ from 'jquery'
import '../../../assets/base.scss'
import './cloth.scss'
import { Row, Col, Icon } from 'antd';
import {Link} from 'react-router'
import * as ClothAction from './clothAction'
import PathHistory from '../../../utils/history'
import baseUrl from './../../../../common.js'

import ChoiceSize from '../size/sizeComponent'
class ClothComponent extends React.Component{
    render(){
        var res = [];
        res.push(this.props.location.state.data);
        return (
            <div id="detail">
                <h4 className="detail-head">
                    <PathHistory />
                    <p>
                        <Link to="buycar">
                            <span><i className="glyphicon glyphicon-shopping-cart"></i></span>
                        </Link>
                        <Link to="kefu">
                            <span><Icon type="message" /></span>
                        </Link>
                    </p>
                </h4>
                {
                    res.map(function(item, key) {
                        return (
                            <div className="detail-goods">
                                <p><img src={baseUrl.url+item.imgurl} alt={item.commodityname}/></p>
                                <p>{item.description}<span></span></p>
                                <h5>￥{item.price}</h5>
                                <ul>
                                    <li onClick={this.props.chooses}>选择颜色分类，尺码<span><Icon type="right" /></span></li>
                                    <li>产品参数<span><Icon type="right" /></span></li>
                                </ul>
                            </div>
                        )
                    }.bind(this))
                }

                <ChoiceSize text={res} show={this.props.show}/>


                <div className="detail-footer clearfix">
                    <p>
                        <span><Icon type="shop" /></span>
                        <span>店铺</span>
                    </p>
                    <p>
                        <span><Icon type="aliwangwang-o" /></span>
                        <span>客服</span>
                    </p>
                    <p>
                        <span><Icon type="star-o" /></span>
                        <span>收藏</span>
                    </p>
                    <p onClick={this.props.chooses}>加入购物车</p>
                    <p onClick={this.props.chooses}>立即购买</p>
                </div>
            </div>
        )
    }
}

var mapStateToProps = function(state){
    return {
        show: state.cloth.show || false,
        num: state.cloth.num || 1 ,
        toCar: state.cloth.toCar || false,
    }
}
export default connect(mapStateToProps, ClothAction)(ClothComponent);
