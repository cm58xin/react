import React from 'react';
import {Router, Route, Link, hashHistory, IndexRoute} from 'react-router';

import HomeComponent from '../components/home/HomeComponent';
import RootComponent from '../components/RootHome/RootComponent';
import IndexComponent from './../components/RootHome/Index/IndexComponent';

import SalingComponent from './../components/Right/Saling/SalingComponent';
import WarehouseComponent from './../components/Right/warehouse/WarehouseComponent';
import SoldComponent from './../components/Right/sold/SoldComponent';
import PingjiaComponent from './../components/Right/Pingjia/PingjiaComponent';
import SupplierComponent from './../components/Right/supplier/SupplierComponent';
import RegisterComponent from '../components/Register/RegisterComponent';
import LoginComponent from '../components/Login/LoginComponent';
import MemberListComponent from './../components/Right/memberList/MemberListComponent';
import LimitComponent from './../components/Right/limit/LimitComponent';


import SS from './../components/sss/sss'
export default (
    <Route >
        <IndexRoute  path="/" component={HomeComponent} />

        <Route path="home" component={RootComponent}>

            <IndexRoute path="index" component={IndexComponent}/>

            <Route path="saling" component={SalingComponent} />
            <Route path="warehouse" component={WarehouseComponent} />
            <Route path="onSale" component={SoldComponent} />
            <Route path="pingjia" component={PingjiaComponent} />
            <Route path="supplier" component={SupplierComponent} />
            <Route path="MemberList" component={MemberListComponent} />
            <Route path="Limit" component={LimitComponent} />
        </Route>

        <Route path="register" component={RegisterComponent} />
        <Route path="login" component={LoginComponent} />
    </Route>
)
