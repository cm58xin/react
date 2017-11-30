import React from 'react';
import {connect} from 'react-redux';
import {Router, Route, Link, hashHistory, IndexRoute} from 'react-router';
import { DatePicker } from 'antd';

import * as pingjiaAction from './pingjiaAction';
import FootComponent from './../../../footer/footComponent'

import './pingjia.scss'

import http from './../../../../../common.js'

const { MonthPicker, RangePicker } = DatePicker;
class pingjiaComponent extends React.Component{
    // componentDidMount(){
    //     this.props.Init();
    // }



    onChange(date, dateString) {
      console.log(date, dateString);
    }

    render(){
        return (
        	<div id="box">
        		<header>
                    <h3><Link to="my"><i className="el-icon-arrow-left"></i></Link>我的评价</h3>
             	</header>
                <div className="pingjia_main">
                    <ul>
                        {
                            (this.props.dataset.data || []).map(function(item,idx){
                                return(
                                    <li key={idx}>
                                    <p><img src={item.userImgurl}/><span>{item.userName}</span></p>
                                    <p><span>{item.date}</span><span>尺寸：{item.goodsSize}</span></p>
                                    <p>{item.content}</p>
                                    <p><img src={item.goodsImgurl} /><p>{item.goodsName}<span>￥{item.goodsPrice}</span></p></p>
                                    </li>
                                )

                            })
                        }
                    </ul>
                </div>
             	<FootComponent></FootComponent>

        	</div>

        )
    }
}
const mapStateToProps = function(state){
    return {
      dataset:state.pingjia.dataset || {}
    }
}
export default connect(mapStateToProps, pingjiaAction)(pingjiaComponent)
