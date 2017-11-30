import React from 'react';
import {connect} from 'react-redux';
import {Icon } from 'antd';
import * as clothAction from '../cloth/clothAction';
import baseUrl from './../../../../common.js';
import $ from 'jquery'
class ChoiceSize extends React.Component{
    render(){
        var res = this.props.text;
        if(this.props.show == true){
            return (
                <div className="detail-size">
                    <div className="detail-size-cover"></div>
                    {
                        res.map((item, key) => {
                            return (
                                <div className="detail-size-con">
                                    <div className="size-con-head">

                                        <h5><img src={baseUrl.url+item.imgurl} width="100px" height="100px"/></h5>
                                        <div>
                                            <p>
                                                <span>￥{item.price}</span>
                                                <span className="hided" onClick={this.props.close}><Icon type="close-circle-o" /></span>
                                            </p>
                                            <p>库存{item.count}件</p>
                                            <p>请选择</p>
                                        </div>

                                    </div>
                                    <div className="size-con-con">
                                        <div>
                                            <h5>颜色分类</h5>
                                            <ul className="clearfix colortype">
                                                {
                                                    String(item.colortype).split(',').map((val,idx) => {
                                                        return (
                                                            <li className={this.props.addClass == 'color'+idx ?'active' : ''} onClick={this.props.addActive.bind(this, 'color'+idx)}>{val}</li>
                                                        )
                                                    })
                                                }
                                            </ul>
                                        </div>
                                        <div>
                                            <h5>尺码</h5>
                                            <ul className="clearfix sizetype">
                                                {
                                                    String(item.sizetype).split(',').map((val,idx) => {
                                                        return <li className={this.props.addClass1 == 'size'+idx ?'active' : ''} onClick={this.props.addActive1.bind(this, 'size'+idx)}>{val}</li>
                                                    })
                                                }
                                            </ul>
                                        </div>
                                        <div>
                                            <h5>购买数量</h5>
                                            <div className="counter">
                                                <span  onClick={this.props.count.bind(this, 'decrease')}>-</span>
                                                <p className="num">{this.props.num}</p>
                                                <span onClick={this.props.count.bind(this, 'increase')}>+</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="size-con-foot">
                                        <p onClick={this.props.toCar.bind(this, res)}>加入购物车</p>
                                        <p>立即购买</p>
                                    </div>
                                </div>
                            )
                        })
                    }
                </div>
            )
        }else if(this.props.show == false){
            return null;
        }
    }
}
var mapStateToProps = function(state){
    return {
        show: state.cloth.show || false,
        addClass: state.cloth.addClass || '',
        addClass1: state.cloth.addClass1 || '',
        num: state.cloth.num || 1
    }
}
export default connect(mapStateToProps, clothAction)(ChoiceSize);
