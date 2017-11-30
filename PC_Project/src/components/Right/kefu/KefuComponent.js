import React from 'react';

import {connect} from 'react-redux';
import { DatePicker } from 'antd';
import { Button,Checkbox,Breadcrumb,Icon,Table,message,Input,Select} from 'antd';


var {Router, Route, Link, hashHistory, browserHistory} = require('react-router');

import * as KefuAction from './KefuAction';

import DataGridComponent from './../../DataGrid/DataGridComponent'
import './Kefu.scss'
import http from "../../../common/common";

import $ from "jquery";


const Search = Input.Search;

class Kefu extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      params: ""
    };
  }
  componentDidMount() {

  }
  one() {
    $(".tanchu").hide();
  }
  two() {
    //请求数据
    var params = {
      id: $($(".tanchuChi").children().eq(0)).val(),
      name: $($(".tanchuChi").children().eq(1)).val(),
      type: $($(".tanchuChi").children().eq(2)).val(),
      description: $($(".tanchuChi").children().eq(4)).val(),
      supplier: $($(".tanchuChi").children().eq(5)).val(),
      size: $($(".tanchuChi").children().eq(6)).val(),
      price: $($(".tanchuChi").children().eq(7)).val(),
      status: $($(".tanchuChi").children().eq(8)).val(),

    }

    this.props.change(http.url + "SalingUpdate", params).then(response => {

      if(response = '"ok"') {
        var page = $(".ant-pagination-item-active").children().html();
        var pramas = {
          page: page,
          pageSize: 5,
        }
        this.props.change(http.url + "Rsmfengye", pramas).then(response => {
          if(response) {
            $(".tanchu").hide()
          }
        });
      }
    });
  }
  //拿取父级数据
setparams(params) {
    this.setState({
      params: params
    });
    $($(".tanchuChi").children().eq(1)).val(params.name)
    $($(".tanchuChi").children().eq(2)).val(params.type)
    $($(".tanchuChi").children().eq(4)).val(params.description)
    $($(".tanchuChi").children().eq(5)).val(params.supplier)
    $($(".tanchuChi").children().eq(6)).val(params.size)
    $($(".tanchuChi").children().eq(7)).val(params.price)
    $($(".tanchuChi").children().eq(8)).val(params.status)

  }
  render() {
    var params = this.state.params;
    return(
      <div className = "tanchu">
            <div className = "tanchuChi">
              Id:<Input  disabled = "true" value = {params.id}/>
              Name:<Input />
              Type:<Input />
              Imgurl:<Input  disabled = "true"/>
              Description:<Input  />
              Supplier:<Input  />
              Size:<Input  />
              Price:<Input  />
              Status:<Input disabled = "true" value = {params.status}/>
              <Button onClick = {this.one.bind(this)}>取消</Button>
              <Button onClick = {this.two.bind(this)}>确定</Button>
            </div>
          </div>
    )
  }
}

class KefuComponent extends React.Component{
    constructor(props) {
     super(props);
  }

   componentDidMount(){

      $(".tanchu").hide();

   }
  sousuo(){

    var text =  $(".sousuo").val();

    var sort = $(".ant-select-selection__rendered").text();
    var condition ;
    if(sort==='标识'){
       condition='id';
    }else if(sort==='名称'){
       condition='commodityname';
    }else if(sort==='供应商'){
       condition='supplier';
    }else if(sort==='价格'){
       condition='price';
    }else if(sort==='类型'){
       condition='type';
    }

      var api =  http.url + "Rsmfengye";

      var qty = 5;

      var data ={
           page: 1,
           pageSize:qty,
           condition:condition,
           text:text,
           id:''
        }
     this.props.Fenye(api,data)


  }



   one(target){//更新
      // console.log(target.parentElement.parentElement)
          var params = {

          id: $($(target).parents("tr").children().eq(0)).html(),
          name: $($(target).parents("tr").children().eq(1)).html(),
          type: $($(target).parents("tr").children().eq(2)).html(),
          imgurl: $($(target).parents("tr").children().eq(3)).html(),
          description: $($(target).parents("tr").children().eq(4)).html(),
          supplier: $($(target).parents("tr").children().eq(5)).html(),
          size: $($(target).parents("tr").children().eq(6)).html(),
          price: $($(target).parents("tr").children().eq(7)).html(),
          status: $($(target).parents("tr").children().eq(8)).html(),
        }
        this.refs.tan.setparams(params);
        $(".tanchu").show();

    }
    two(target){
    //删除

    //
        var api=http.url + "Rsmfengye" ;

        var id= $(target).parents("tr").children("td").eq(0).text();


         var data ={
            id:id,
         }


       this.dataFenye(api,data).then(response => {
          console.log(response)
            if(response = '"ok"') {

                  var api=http.url + "Rsmfengye" ;

                  var page = $('.ant-pagination-item-active').children('a').text();

                  var qty = 5;

                  var data ={
                    page: page,
                    pageSize:qty,
                    condition:'',
                    text:'',
                    id:''
                   }
                  this.dataFenye(api, data);
            }

       })
    }

    render(){
      // console.log(this.props.Under)
      var cols = ["id", "commodityname","type", "imgurl" ,"description","supplier" , "size", "price" ,"status"];
      var operate = ["update" ,"under"];

      var api =  http.url + "Rsmfengye";

      var qty = 4;

      return (
        <div id="Right">

            <TanChuKuang ref = "tan" change = {this.props.Fenye}/>

            <div className="SalingTop">
                <Breadcrumb><span>当前位置：</span><Breadcrumb.Item href="#/home"><Icon type="home" /><span>主页</span>
                </Breadcrumb.Item>
                <Breadcrumb.Item href="#/home/saling"><Icon type="user" /><span>商品管理</span></Breadcrumb.Item><Breadcrumb.Item><Icon type="gift" />出售中</Breadcrumb.Item></Breadcrumb>
                <Link to="register"><Button className="registerTop" icon="user">注册</Button></Link>
                    <Link to="login"><Button className="loginTop" icon="poweroff">退出</Button></Link>
            </div>
            <div className="SalingMain">
                <p >
                  <Select defaultValue="名称" style={{ width:60 }}>
                    <Option value="标识">标识</Option>
                    <Option value="名称">名称</Option>
                    <Option value="供应商">供应商</Option>
                    <Option value="价格">价格</Option>
                    <Option value="类型">类型</Option>
                  </Select>
                  <input type="text"  placeholder="请输入搜索条件"  className="sousuo"/>
                   <Button icon="search"  className="btnSearch" onClick={this.sousuo.bind(this)}>Search</Button>
                </p>
                <div className="SalingTable">
                  <DataGridComponent  qty = {qty}  cols={cols} under={this.props.Fenye} two = {this.two}  one = {this.one.bind(this)}    api = {api} operate = {operate}  ref = "cc" ></DataGridComponent>
                </div>
            </div>
        </div>
      )
    }
}
const mapStateToProps = function(state){
    return {
        loading: state.Saling.loading,
        dataset: state.Saling.dataset || {}
    }
}

export default connect(mapStateToProps, KefuAction)(KefuComponent)
