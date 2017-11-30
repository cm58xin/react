import React from 'react';
import {connect} from 'react-redux';

import { Button,Checkbox} from 'element-react';

import * as HomeAction from './HomeAction';
import LeftComponent from './../Left/LeftComponent'
import $ from 'jquery';
import './Home.scss'
import './../../assets/base.scss'
class HomeComponent extends React.Component{

    componentDidMount(){

    }
    render(){
        return (
            <div id="home">
                {this.props.chidlren}
            </div>
        )
    }
}
const mapStateToProps = function(state){
    return {

    }
}

export default connect(mapStateToProps, HomeAction)(HomeComponent)
