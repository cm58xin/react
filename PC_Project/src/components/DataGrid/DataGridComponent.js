import React from 'react';
import { connect } from 'react-redux';
import { Button, DatePicker, Table, Icon, Pagination } from 'antd';
import "../../../node_modules/antd/dist/antd.css";
import $ from 'jquery';
import http from '../../common/common';

import SpinnerComponent from '../spinner/spinner';
import * as DataGridAction from './DataGridAction';

import "./DataGrid.scss"
class DataGridComponent extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			text: '',
            zidian:'cn',
            ziDian:'CN'
		};
	}
	componentDidMount() {
		//有值在给他进行拼接
        //    //

		var dicObj;
		$.get('./src/components/dictionary/commonDic.txt', (dic) => {

			dicObj = JSON.parse(dic);
			this.setState({
				text: dicObj
			});

			if(this.props.api) {

				var api = this.props.api;

				var qty = this.props.qty ? this.props.qty :10;

                var data = {
                    page: 1,
                    pageSize: qty,
                    condition:'',
                    text:'',
                    id:''
                }

				this.props.dataFenye(api,data);

			}
		})
	}
	update(e) {
		this.props.one(e.target)
	}
	delete(e) {
		this.props.two(e.target)
	}

    under(api, data){
        // console.log(6666 )
       this.props.Fenye(api, data)
    }

    zidian(){
        if(this.state.zidian == "cn"){
            this.setState({
                zidian: "en",
                ziDian: "EN"
            });
        }else{
            this.setState({
                zidian: "cn",
                ziDian: "CN"
            });
        }
    }

	onChange(page, pageSize) {

		var qty = this.props.qty ? this.props.qty :10
		if(this.props.api) {

			var api = this.props.api

            var data = {
                page: page,
                pageSize:qty,
                condition:'',
                text:'',
                id:''
            }

            this.props.dataFenye(api, data);

		}

	}

	render() {
		var tatol;

		if(this.props.dataset.total !== undefined){
			tatol = this.props.dataset.total[0].rowsCount
		}
		var dicObj = this.state.text;
		var operate = this.props.operate;
		var show = "none";
		var delet = "none";
		var updat = "none";
        var under = "none";

	    var dicType = this.state.zidian;
		if(operate) {
			show = `block`;
		}
		if(operate.indexOf("delete") > -1) {
			delet = `block`;
		}
		if(operate.indexOf("update") > -1) {
			updat = `block`;
		}
        if(operate.indexOf("under") > -1) {
            under = `block`;
        }

		return(
			<div className = "tableParent">


                <table >
                    <thead>
                        <tr>
                        {
                            (this.props.cols ? this.props.cols : Object.keys( this.props.dataset.data !== undefined  ? this.props.dataset.data[0] : {})).map(function(key, idx){

                                return <th key={'th' + idx}>{ dicObj[`${dicType}`] ? dicObj[`${dicType}`][key] : key }</th>
                            })
                        }
                        <th style={{display:`${show}`}} key = "last" > 操作(handle)<button onClick = {this.zidian.bind(this)} type="button" className="ant-btn header-lang-button ant-btn-sm ant-btn-background-ghost"><span>{this.state.ziDian}</span></button>
</th>
                        </tr>
                    </thead>
                    <tbody >
                        {
                            (this.props.dataset.data !== undefined  ? this.props.dataset.data : []) .map((obj, idx) => {
                            	var self = this
                                return (
                                    <tr key={'tr' + idx}>
                                        {
                                            Object.keys(obj).map(function(key, i){

                                        		if(self.props.cols){
                                            		if(self.props.cols.indexOf(key) > -1){
                                            			if(key == "imgurl"){
                                            				return <td  key={'td' + i}><img src = {http.url1+obj[key]}/></td>
                                            			}else{
                                            				return <td  key={'td' + i}>{obj[key]}</td>
                                            			}

                                            		}
                                            	}else{
                                            		if(key == "imgurl"){
                                        				return <td  key={'td' + i}><img src = {http.url1+obj[key]}/></td>
                                        			}else{
                                        				return <td  key={'td' + i}>{obj[key]}</td>
                                        			}
                                            	}


                                            })
                                        }
                                        <td key = "lastTd" style={{display:`${show}`}}>
                                        	<Button key = "updat" style={{display:`${updat}`}} type="primary" onClick = {this.update.bind(this)}><Icon type="edit"/>编辑</Button>
                                        	<Button type="danger" key = "delet" style={{display:`${delet}`}} onClick = {this.delete.bind(this)}><Icon type="delete"/>删除</Button>
                                            <Button type="danger" key = "under" style={{display:`${under}`}} onClick = {this.delete.bind(this)} ><Icon type="download" />下架</Button>

                                        </td>
                                    </tr>
                                )
                            })
                        }
                        <tr>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
 				<Pagination showQuickJumper defaultCurrent={1} total={tatol*1} defaultPageSize = {this.props.qty}   onChange = {this.onChange.bind(this)}  />,
            </div>
		)

	}
}

const mapStateToProps = function(state) {
	return {
		loading: state.DataGrid.loading,
		dataset: state.DataGrid.dataset || {}
	}
}

export default connect(mapStateToProps, DataGridAction)(DataGridComponent)
