import React from 'react';
import {connect} from 'react-redux';

import { Button,Checkbox} from 'element-react';

import * as RootAction from './RootAction';
import LeftComponent from './../Left/LeftComponent'

import './RootHome.scss'
import './../../assets/base.scss'
class RootComponent extends React.Component{
    componentDidMount(){
    }
    render(){
        return (
            <div id="box">
                <LeftComponent />
                {this.props.children}
            </div>
        )
    }
}
const mapStateToProps = function(state){
    return {

    }
}

export default connect(mapStateToProps, RootAction)(RootComponent)
