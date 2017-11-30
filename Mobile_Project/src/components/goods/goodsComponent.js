import React from 'react';
import {connect} from 'react-redux';

import $ from 'jquery'
import './../../assets/base.scss'
import './goods.scss'
import { Row, Col, Icon } from 'antd';
import {Link} from 'react-router'
import * as goodsAction from './goodsAction'
import baseUrl from './../../../common'

import FootComponent from './../footer/footComponent'
class GoodsComponent extends React.Component{
    render(){
        return (
            <div id="box">
                <div id="goodslist">
                    <div className="classifyHead goodHead">
                        <h1><Link to="/"><i className="el-icon-arrow-left"></i></Link>商品分类</h1>
                    </div>
                    <div className="goodsMain">
                        <ul>
                            <li>
                                <h3>牛仔专区特卖</h3>
                                <p>每日准时上新，新款牛仔风</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "牛仔"
                                    }
                                }}>
                                <img src="./../../../static/img/niuzai.jpg" />
                                </Link>
                            </li>
                            <li>
                                <h3>秋冬上新特卖</h3>
                                <p>秋冬爆款新品，量身定制</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "秋冬上新"
                                    }
                                }}>
                                <img src="./../../../static/img/qiudong.jpg" />
                                </Link>
                            </li>
                            <li>
                                <h3>女神套装特卖</h3>
                                <p>女神衣柜必备</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "套装"
                                    }
                                }}>
                                <img src="./../../../static/img/taozhuang.jpg" />
                            </Link>
                            </li>
                            <li>
                                <h3>气质卫衣特卖</h3>
                                <p>卫衣专场，气质神器</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "卫衣"
                                    }
                                }}>
                                <img src="./../../../static/img/weiyi.jpg" />
                                </Link>
                            </li>
                            <li>
                                <h3>上新上衣特卖</h3>
                                <p>新品首发</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "上衣"
                                    }
                                }}>
                                <img src="./../../../static/img/shangyi.jpg" />
                                </Link>
                            </li>
                            <li>
                                <h3>时尚小白鞋特卖</h3>
                                <p>白搭小白鞋，大牌专属</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "小白鞋"
                                    }
                                }}>
                                <img src="./../../../static/img/xiaobaixie.jpg" />
                                </Link>
                            </li>
                            <li>
                                <h3>挚爱连衣裙特卖</h3>
                                <p>挚爱连衣裙</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "连衣裙"
                                    }
                                }}>
                                <img src="./../../../static/img/lianyiqun.jpg" />
                                </Link>
                            </li>
                            <li>
                                <h3>阔腿裤特卖</h3>
                                <p>崇尚自由，只选阔腿裤</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "裤子"
                                    }
                                }}>
                                <img src="./../../../static/img/kuotuiku.jpg" />
                                </Link>
                            </li>
                            <li>
                                <h3>美包特卖</h3>
                                <p>包包专享</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "美包"
                                    }
                                }}>
                                <img src="./../../../static/img/meibao.jpg" />
                                </Link>
                            </li>
                            <li>
                                <h3>短靴特卖</h3>
                                <p>牛皮透气短靴</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "短靴"
                                    }
                                }}>
                                <img src="./../../../static/img/duanxue.jpg" />
                                </Link>
                            </li>
                            <li>
                                <h3>化妆品特卖</h3>
                                <p>透气精致女装</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "美妆"
                                    }
                                }}>
                                <img src="./../../../static/img/meizhuang.jpg" />
                                </Link>
                            </li>
                            <li>
                                <h3>男友服装特卖</h3>
                                <p>男友最爱，与众不同</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "男友"
                                    }
                                }}>
                                <img src="./../../../static/img/nanyou.jpg" />
                                </Link>
                            </li>
                            <li>
                                <h3>袜子内衣特卖</h3>
                                <p>一袜一旅行</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "内衣袜子"
                                    }
                                }}>
                                <img src="./../../../static/img/wazi.jpg" />
                                </Link>
                            </li>
                            <li>
                                <h3>项链配饰特卖</h3>
                                <p>独有韵味之配饰专区</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "配饰"
                                    }
                                }}>
                                <img src="./../../../static/img/peishi_2.jpg" />
                                </Link>
                            </li>
                            <li>
                                <h3>零食专区特卖</h3>
                                <p>舌尖上的诱惑</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "零食"
                                    }
                                }}>
                                <img src="./../../../static/img/lingshi.jpg" />
                                </Link>
                            </li>
                            <li>
                                <h3>家居专区特卖</h3>
                                <p>您的生活必备</p>
                                <Link to={{
                                    pathname: '/goodslist',
                                    state: {
                                        data: "家居"
                                    }
                                }}>
                                <img src="./../../../static/img/jiaju.jpg" />
                                </Link>
                            </li>
                        </ul>
                    </div>
                    <FootComponent/>
                </div>
            </div>
        )
    }
}

var mapStateToProps = function(state){
    return {
    }
}
export default connect(mapStateToProps, goodsAction)(GoodsComponent);
