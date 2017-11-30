import React from 'react';
import {connect} from 'react-redux';
import 'element-theme-default';
import { Checkbox } from 'antd';
import {Link} from 'react-router';
import {Icon} from 'antd';
import * as buycarAction from './buycarAction';
import './buycar.scss';
import './../../assets/base.scss';
import FootComponent from './../footer/footComponent';
import http from './../../../common.js';
class buycarComponent extends React.Component{
    componentWillMount(){
        this.props.Init();
    }

    render(){
        return (
            <div id="box">
                <header>
                <h3><Link to="/"><i className="el-icon-arrow-left"></i></Link>购物车</h3>
                    {this.props.show == false ?<span onClick={this.props.edit}>编辑</span> : <span onClick={this.props.finish}>完成</span>}
                </header>

                <div id="buycar_main">
                    <ul>
                        {
                            (this.props.dataset || []).map(function(obj,idx){
                                return(
                                    <li key={idx}>
                                        <Checkbox onClick={this.props.buycarChecked.bind(this,idx)}></Checkbox>
                                        <div className="buy_r">

                                            <img src={http.url+obj.imgurl}/>
                                            {this.props.show ?<Icon type="delete" key={idx} onClick={this.props.deleted.bind(this,obj.id)}/> : ''}
                                            <p>
                                                <h4 className="name">{obj.name}</h4>
                                                <span className="size">尺寸:{obj.sizetype}</span>
                                                <span className="color">颜色:{obj.colortype}</span>
                                                <span className="price">￥{obj.price}</span>
                                                <div className="counter">
                                                    <span onClick={this.props.decrease.bind(this,idx)}>-</span>
                                                    <input className="num" value={obj.num}></input>
                                                    <span onClick={this.props.increase.bind(this,idx)}>+</span>
                                                </div>
                                            </p>
                                        </div>

                                    </li>
                                )
                            }.bind(this))
                        }
                    </ul>

                    <div className="toPay">
                        <p>
                        <h4>总金额：<span>{this.props.totalPrice}</span></h4>
                        <Link to="pay"><input type="button" value="去结算" onClick={this.props.topay.bind(this,this)}/></Link>
                        </p>

                    </div>
                </div>
                <FootComponent></FootComponent>
            </div>
        )
    }
}

const mapStateToProps = function(state){
    if(state.buycar.deleted){
        state.buycar.dataset.forEach(function(item,idx){
            if(item.id == state.buycar.deleted){
                state.buycar.dataset.splice(idx,1);
            }
        })
    }
    sessionStorage.setItem('checked',JSON.stringify(state.buycar.checked))
    sessionStorage.setItem('dataset',JSON.stringify(state.buycar.dataset))
    sessionStorage.setItem('totalPrice',JSON.stringify(state.buycar.totalPrice ? state.buycar.totalPrice : 0))
    return {
        dataset:Array.isArray(state.buycar.dataset) ? state.buycar.dataset : [],
        totalPrice:state.buycar.totalPrice || 0,
        checked:state.buycar.checked,
        show:state.buycar.show || false,

    }

}

export default connect(mapStateToProps, buycarAction)(buycarComponent)
