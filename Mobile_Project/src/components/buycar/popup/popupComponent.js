
import React from 'react';
import {connect} from 'react-redux';
import {Icon} from 'antd';
import * as popupAction from './popupAction';
import {Router,Route, Link, IndexRoute, hashHistory} from 'react-router';

import './popup.scss';

var PopupComponent = React.createClass({
	render:function(){
		if(this.props.show || this.props.show1){
			if(this.props.show){
				this.props.PopupShow();
			}
			return (
				<div id="popup">
					<div className="popup_cover"></div>
					<div className="popup_content">
						<div className="popup_content_header">
	                        <p className="header">
	                        	<Icon type="close"  onClick={this.props.Close}/>
	                        		确认付款
	                        	<Icon type="question-circle-o" />
	                        </p>
	                        <h3>￥{this.props.totals}</h3>
	                        <p>支付宝帐号<span>130*******05</span></p>
	                        <p>付款方式<span>花呗</span></p>
	                        <p className="passwordBox">
	                        	{
		                        	<span>
			                      		<input type="password" placeholder={this.props.data[0]+1? '·':null}/>
										<input type="password" placeholder={this.props.data[1]+1? '·':null}/>
										<input type="password" placeholder={this.props.data[2]+1?	'·' :null}/>
										<input type="password" placeholder={this.props.data[3]+1?	'·' :null}/>
										<input type="password" placeholder={this.props.data[4]+1? '·':null}/>
										<input type="password" placeholder={this.props.data[5]+1? '·':null}/>
		                        	</span>
	                        	}
							</p>
						</div>
						{
							this.props.data.length == 6? this.props.Yanzheng(this.props.data) : ''
						}
						<div className="popup_content_bottom">
							<div className="keybox">
								<button key="button1" onClick={this.props.getMsg.bind(this, 1)}>1</button>
								<button key="button2" onClick={this.props.getMsg.bind(this, 2)}>2</button>
								<button key="button3" onClick={this.props.getMsg.bind(this, 3)}>3</button>
							</div>
							<div className="keybox">
								<button key="button4" onClick={this.props.getMsg.bind(this, 4)}>4</button>
								<button key="button5" onClick={this.props.getMsg.bind(this, 5)}>5</button>
								<button key="button6" onClick={this.props.getMsg.bind(this, 6)}>6</button>
							</div>
							<div className="keybox">
								<button key="button7" onClick={this.props.getMsg.bind(this, 7)}>7</button>
								<button key="button8" onClick={this.props.getMsg.bind(this, 8)}>8</button>
								<button key="button9" onClick={this.props.getMsg.bind(this, 9)}>9</button>
							</div>
							<div className="keybox">
								<button >&nbsp;</button>
								<button key="button0" onClick={this.props.getMsg.bind(this, 0)}>0</button>
								<button key="buttoncls" onClick={this.props.Delete}>&times;</button>
							</div>
						</div>
						
					</div>
				</div>

				
			)
		}else{
			return null;
		}
		
	}
})

var mapState = function (state){
	
	return{
		data:state.popup.data || [],
		show1:state.popup.show1 ==undefined ? false : state.popup.show1
	}
}

// export default PopupComponent;
export default connect(mapState, popupAction)(PopupComponent);