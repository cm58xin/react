import React from 'react';
import {connect} from 'react-redux';
import '../../assets/base.scss'
import './home.scss'
import {Link} from 'react-router';
import http from './../../../common.js';

import { Carousel, Col, Icon,Button } from 'antd';

import * as HomeAction from './homeAction'

import FootComponent from './../footer/footComponent'
import HeadComponent from './../header/headComponent';
import DetailComponent from './detail/detailComponent.js'
class HomeComponent extends React.Component{
    componentDidMount(){
        this.props.Init();
    }
    render(){
        return (
            <div id="box">
                <HeadComponent/>
                 <div id="allmap"></div>
                <div className="min-container">
                    <Carousel autoplay="true" className="min-banner">
                        <div>
                             <Link to={{
                                pathname: '/goodslist',
                                state: {
                                    data: "套装"
                                }
                            }}>
                            <img alt="套装" src="./../../../static/img/taozhuang.jpg"/>
                            </Link>
                        </div>
                        <div>
                            <Link to={{
                                pathname: '/goodslist',
                                state: {
                                    data: "箱包"
                                }
                            }}>
                            <img alt="箱包" src={http.url+"/api/img/banner/xiangbao1.jpg"}/>
                            </Link>
                        </div>
                        <div>
                            <Link to={{
                                pathname: '/goodslist',
                                state: {
                                    data: "时尚"
                                }
                            }}>
                            <img alt="时尚" src={http.url+"/api/img/banner/shishang.jpg"}/>
                            </Link>
                        </div>
                        <div>
                            <Link to={{
                                pathname: '/goodslist',
                                state: {
                                    data: "配饰"
                                }
                            }}>
                            <img alt="配饰" src={http.url+"/api/img/banner/peishi.jpg"}/>
                            </Link>
                        </div>
                    </Carousel>
                    <div className="goodsclassify">
                        <h5>热门市场</h5>
                        <ul className="clearfix">
                            {
                                this.props.goodsclassify.map(obj => {
                                    return <li type={obj.title} >
                                        <Link to={{
                                            pathname: '/goodslist',
                                            state: {
                                                data: obj.content
                                            }
                                        }}>
                                            <img src={obj.imgUrl} alt={obj.content}/>
                                            <p>{obj.content}</p>
                                        </Link>
                                    </li>
                                })
                            }
                        </ul>
                    </div>
                    <div className="goodslist">
                        <h3>每日推荐</h3>
                        <DetailComponent dataset={this.props.dataset}/>
                    </div>
                </div>
                 <div id="history">
                     <div className="hot">
                      <h3>热搜</h3>
                     </div>

                     <div className="lishi">
                        <h3>历史搜索</h3>
                     </div>
                     <Button icon="delete"  className="btn">清空历史</Button>
                </div>
                <FootComponent/>
            </div>
        )
    }
}
var mapStateToProps = function(state){
    return {
        dataset: state.home.dataset || [],
        go: state.home.go || false,
        goodsclassify: [{
            imgUrl:'../../../static/img/goodsclassify/qlimin2017001.jpg',
            content: '牛仔',
            title: 'niuzai'
        },{
            imgUrl: "../../../static/img/goodsclassify/qlimin2017002.jpg",
            content: '秋冬上新',
            title: 'qiudong'
        },{
            imgUrl:"../../../static/img/goodsclassify/qlimin2017003.jpg",
            content: '套装',
            title: 'taozhuang'
        },{
            imgUrl: "../../../static/img/goodsclassify/qlimin2017004.jpg",
            content: '卫衣',
            title:'weiyi'
        },{
            imgUrl: "../../../static/img/goodsclassify/qlimin2017005.jpg",
            content: "上衣",
            title: "shangyi"
        },{
            imgUrl: "../../../static/img/goodsclassify/qlimin2017006.jpg",
            content: "小白鞋",
            title: "xiaobaixie"
        },{
            imgUrl: "../../../static/img/goodsclassify/qlimin2017007.jpg",
            content: "连衣裙",
            title: "lianyiqun"
        },{
            imgUrl: "../../../static/img/goodsclassify/qlimin2017008.jpg",
            content: "裤子",
            title: "kuzi"
        },{
            imgUrl: "../../../static/img/goodsclassify/qlimin2017009.jpg",
            content: "美包",
            title: "meibao"
        },{
            imgUrl: "../../../static/img/goodsclassify/qlimin20170010.jpg",
            content: "短靴",
            title: "duanxue"
        },{
            imgUrl: "../../../static/img/goodsclassify/qlimin20170011.jpg",
            content: "美妆",
            title: "meizhuang"
        },{
            imgUrl: "../../../static/img/goodsclassify/qlimin20170012.jpg",
            content: "男友",
            title: "nanyou"
        },{
            imgUrl: "../../../static/img/goodsclassify/qlimin20170013.jpg",
            content: "内衣袜子",
            title: "neiyiwazi"
        },{
            imgUrl:"../../../static/img/goodsclassify/qlimin20170014.jpg",
            content: "配饰",
            title: "peishi"
        },{
            imgUrl: "../../../static/img/goodsclassify/qlimin20170015.jpg",
            content: "零食",
            title: "lingshi"
        },{
            imgUrl: "../../../static/img/goodsclassify/qlimin20170016.jpg",
            content: "家居百货",
            title: "jiajubaihuo"
        }]
    }
}
export default connect(mapStateToProps, HomeAction)(HomeComponent);
