import React, {Component} from 'react';
import { createHistory } from 'history';
import {Icon} from 'antd';

const history = createHistory();

class HistorybackComponent extends React.Component {
    historyBack(){
        history.goBack();
    }
    render(){
        return(
            <span id="back"><Icon type="left" onClick={this.historyBack}/></span>
        )
    }
}
export default HistorybackComponent;