import React from 'react';
import './sss.scss';
import DataGridComponent from '../DataGrid/DataGridComponent'
import $ from 'jquery';


class sss extends React.Component{
	componentDidMount(){

	}
	one(target){//更新
	}
	two(target){//删除
	}
    render(){
    	var cols = ["id", "name", "price"];
    	var operate = ["delete", "update"];
    	var api = "fenye";
    	var qty = 4;
        return (
            <div>
            	 <DataGridComponent qty = {qty} cols={cols} two = {this.two}  one = {this.one}   api = {api} operate = {operate}  ref = "cc" ></DataGridComponent>
            </div>
        )
    }
}
export default sss

