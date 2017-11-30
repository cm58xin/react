import React from 'react';
import {Router, Route, Link, hashHistory, IndexRoute} from 'react-router';
import GoodsComponent from '../components/goods/goodsComponent'

import HomeComponent from '../components/home/homeComponent'
import LoginComponent from '../components/login/loginComponent'
import RegisterComponent from '../components/register/registerComponent'
import ClothComponent from './../components/home/cloth/clothComponent'
import BuyComponent from '../components/buycar/buycarComponent'
import PayComponent from '../components/buycar/pay/payComponent'

import MyComponent from '../components/my/myComponent'
import OrderComponent from '../components/my/ChildComponent/order/orderComponent'
import ShoucangComponent from '../components/my/ChildComponent/shoucang/shoucangComponent'
import UserComponent from '../components/my/ChildComponent/user/userComponent'
import PingjiaComponent from '../components/my/ChildComponent/pingjia/pingjiaComponent'
import KefuComponent from '../components/my/ChildComponent/kefu/kefuComponent'

//唐
import ZhifuComponent from '../components/my/ChildComponent/zhifu/zhifuComponent';
import FahuoComponent from '../components/my/ChildComponent/fahuo/fahuoComponent';
import ShouhuoComponent from '../components/my/ChildComponent/shouhuo/shouhuoComponent';
import TuikuanComponent from '../components/my/ChildComponent/tuikuan/tuikuanComponent';
import ShezhiComponent from '../components/my/ChildComponent/shezhi/shezhiComponent';
import XiugaigerenxinxiComponent from '../components/my/ChildComponent/xiugaigerenxinxi/xiugaigerenxinxiComponent';
import AboutourComponent from '../components/my/ChildComponent/aboutour/aboutourComponent';
import AddressComponent from '../components/my/ChildComponent/address/addressComponent';
import AddresseditComponent from '../components/my/ChildComponent/addressedit/addresseditComponent';
import PopupComponent from '../components/my/ChildComponent/popup/popupComponent';
import GoodslistComponent from './../components/home/goodslistComponent/goodslistComponent'

export default (
    <Route path="/">
        <IndexRoute component={HomeComponent}/>
            <Route path="home" component={HomeComponent}></Route>
            <Route path="cloth" component={ClothComponent}></Route>
            <Route path="goodslist" component={GoodslistComponent}></Route>
        <Route path="goods" component={GoodsComponent}>
        
        </Route>
        <Route path="buyCar" component={ BuyComponent}></Route>
        <Route path="my" component={MyComponent} />
        <Route path="pay" component={PayComponent}/>

        <Route path="order" component={OrderComponent}></Route>
        <Route path="shoucang" component={ShoucangComponent}></Route>
        <Route path="user" component={UserComponent}></Route>
        <Route path="pingjia" component={PingjiaComponent}></Route>
        <Route path="kefu" component={KefuComponent}></Route>

        //唐
        <Route path="zhifu" component = {ZhifuComponent}></Route>
        <Route path="fahuo" component = {FahuoComponent}></Route>
        <Route path="shouhuo" component = {ShouhuoComponent}></Route>
        <Route path="shezhi" component = {ShezhiComponent}></Route>
        <Route path="tuikuan" component = {TuikuanComponent}></Route>
        <Route path="xiugaigerenxinxi" component={XiugaigerenxinxiComponent}></Route>
        <Route path="aboutour" component = {AboutourComponent}></Route>
        <Route path="address" component = {AddressComponent}></Route>
        <Route path="addressedit" component = {AddresseditComponent}></Route>
        <Route path="popup" component = {PopupComponent}></Route>

        <Route path="login" component={LoginComponent}/>
        <Route path="register" component={RegisterComponent}/>
    </Route>
)
