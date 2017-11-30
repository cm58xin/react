import React from 'react';
import {connect} from 'react-redux';
import {Router, Route, Link, hashHistory, IndexRoute} from 'react-router';

import * as shoucangAction from './shoucangAction';
import FootComponent from './../../../footer/footComponent'

import './shoucang.scss'

class ShoucangComponent extends React.Component{
    // componentDidMount(){
    //     this.props.Init();
    // }
    render(){
        return (
        	<div id="box">
        		<header>
                    <h3><Link to="my"><i className="el-icon-arrow-left"></i></Link>我的收藏</h3>
             	</header>

                <div className="shoucang_main">
                {
                    (this.props.dataset.data ? <p>正在热卖：({this.props.dataset.data ? this.props.dataset.data.length : 0})</p> : <p>还未收藏商品，赶紧去收藏吧！！！</p>)
                }
                    
                    <ul>      
                    
                        {
                            (this.props.dataset.data || []).map(function(item,idx){
                                return(
                                        <li>
                                            <img src={item.imgsrc}/>
                                            <div className="shoucang_r">
                                                <p><h4>{item.name}</h4><span>￥{item.price}</span></p>
                                                <p><p>已选尺码：{item.size}</p><span></span></p>
                                                <input type="button" value="加入购物车"/>
                                            </div>
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
        dataset:state.shoucang.dataset || {}
    }
}
export default connect(mapStateToProps, shoucangAction)(ShoucangComponent)