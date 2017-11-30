import React from 'react';
import {connect} from 'react-redux';
import * as tuikuanAction from './tuikuanAction';
import $ from 'jquery';
import {Router, Route, Link, hashHistory} from 'react-router';

import FooterComponent from '../../../footer/footComponent';

import './tuikuan.scss';
var TuikuanComponent = React.createClass({
    componentWillMount:function(){
        this.props.Init();
    },
    componentDidMount:function(){
        
    
    },
    change:function(){
    
    },
    render:function (){
        return (
            <div id="box">
                <div id="tuikuanheader">
                   <h1>
                       <Link to="/my">
                           <i className="el-icon-arrow-left"></i>
                       </Link>
                       待退款
                   </h1> 
                </div>
                <div id="tuikuancontent">
                    <ul>
                    {

                        (this.props.dataset.data? this.props.dataset.data : []).map((item, idx)=>{
                            return  <li key={'li'+idx}>
                                        <div  className="tuikuancontent_top">
                                            
                                            <p>等待买家付款</p>
                                        </div>
                                        <div className="tuikuancontent_center">
                                            <div className="image">
                                                <img src={item.imgurl}/>
                                            </div>
                                            <div className="text">
                                                <p>{item.name}</p>
                                                <p>颜色分类：{item.color}</p>
                                                <span className="baozang">七天退换</span>
                                            </div>
                                            <div className="prices">
                                                <del>
                                                    <p>￥{item.price1}</p>
                                                </del>
                                                <p>￥{item.price2}</p>
                                                <p>&times;{item.num}</p>
                                            </div>
                                        </div>
                                        <div className="tuikuancontent_bottom">
                                            <p>共{item.num}件商品，合计{item.price2*1 + item.yunfei*1}元，(含运费{item.yunfei}元)</p>
                                            <div className="bottom">
                                                <button onClick={this.change}>延长发货</button>
                                                <button onClick={this.change}>确认发货</button>
                                            </div>
                                            
                                        </div>
                                    </li>
                        })
                    }
                    </ul>
    
                    
                    
                </div>
                <div>
                    <FooterComponent/>
                </div>
            </div>
        )
    }
})

var mapState = function(state){
    console.log(state);
    return {
        dataset:state.tuikuan.dataset || {}
    }
}
export default connect(mapState,tuikuanAction)(TuikuanComponent);