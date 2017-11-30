import React from 'react';
import {connect} from 'react-redux';
import PathHistory from '../../../utils/history'
import {Link} from 'react-router'
import { Icon } from 'antd';
import * as GoodslistAction from './goodslistAction';
import DetailComponent from './../detail/detailComponent';
import History from '../../../utils/history.js';

import '../../../assets/base.scss'
import './goodslist.scss'
import FootComponent from './../../footer/footComponent'
class GoodslistComponent extends React.Component{
    componentDidMount(){
        this.props.Init(this.props.location.state.data);
    }
    render(){
        var style = {   
            height: '28px',
            outline: 'none',
            border: '0 none',
            fontSize: '16px',
            width: '75%',
            padding: '0 10px'
        }
        return (
            <div id="box">
                <div id="goodslist">
                    <div className="classifyHead">
                        <h1><Link to="/"><i className="el-icon-arrow-left"></i></Link>商品列表</h1>
                    </div>
                    <DetailComponent dataset={this.props.dataset}/>
                    <FootComponent/>
                </div>
            </div>
        )
    }

}
var mapStateToProps = function(state){
    return {
        dataset: state.goodslist.dataset || []
    }
}
export default connect(mapStateToProps, GoodslistAction)(GoodslistComponent);