import React from 'react';
import {connect} from 'react-redux';

var {Router, Route, Link, hashHistory, browserHistory} = require('react-router');
import { Button,Checkbox,Input} from 'element-react';

import './foot.scss'
import './../../assets/base.scss'
class FootComponent extends React.Component{
    render(){
        return (
            <div id="foot">
                <ul>
                    <li><Link to="/"><i className="glyphicon glyphicon-home"></i></Link></li>
                    <li><Link to="goods"><i className="glyphicon glyphicon-th"></i></Link></li>
                    <li><Link to="buyCar"><i className="glyphicon glyphicon-shopping-cart"></i></Link></li>
                    <li><Link to="my"><i className="glyphicon glyphicon-user"></i></Link></li>
                </ul>
            </div>
        )
    }
}
const mapStateToProps = function(state){
    return {
       
    }
}

export default(FootComponent)