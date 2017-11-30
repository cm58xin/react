import React from 'react';
import { connect } from 'react-redux';
import { DatePicker } from 'antd';
import { Button, Checkbox, Breadcrumb, Icon, Table, message, Input, Modal } from 'antd';
var {
  Router,
  Route,
  Link,
  hashHistory,
  browserHistory
} = require('react-router');
import * as WarehouseAction from './WarehouseAction';
import LDataGridComponent from './../../LDataGrid/LDataGridComponent'
import './Warehouse.scss'
import http from "../../../common/common";
import $ from "jquery";
import  "jquery-form";
const Search = Input.Search;

class Tianjiashangpin extends React.Component {
	off(e){
			var file = e.target.files[0];
			var reader = new FileReader();
			reader.readAsDataURL(file);
			reader.onload = function(){
					var img = $('<img/>');
					img.attr({src:this.result});
					$('.box').html(img);
			}
	}
	
  constructor(props) {
    super(props);
    this.state = {
      visible: false,
    };
  }
  showModal() {
    this.setState({
      visible: true,
    });
  }
  handleOk() {
    var ipt = $(".ant-modal-content .ant-modal-body input")
    var params = {
      name: $(ipt.eq(0)).val(),
      description: $(ipt.eq(1)).val(),
      count: $(ipt.eq(2)).val(),
      size: $(ipt.eq(3)).val(),
      color: $(ipt.eq(4)).val(),
      price: $(ipt.eq(5)).val(),
    }
    if(!params.name) {
      alert("商品名称未填")
      return false

    } else if(!params.description) {
      alert("商品描述未填")
      return false

    } else if(!params.count) {
      alert("商品数量未填")
      return false

    } else if(!params.size) {
      alert("商品尺码未填")
      return false

    } else if(!params.color) {
      alert("商品颜色未填")
      return false

    } else if(!params.price) {
      alert("商品价格未填")
      return false
    } else {
    	var api = http.url + "tianjia";
    	var self = this;
    	$("#file").ajaxSubmit({
    		url:api,
    		data:params,
    		type:"POST",
    		success:function(res){
    			if(res == '"ok"'){
	        var page = $(".ant-pagination-item-active").children().html()
	        var pramas = {
	          pageSize: 5,
	          page: page
	        }
	        self.props.change(http.url + "fengye", pramas).then(response => {
	          alert("新增成功")
	        })
				
	        }
    		}
    	})
    }
    this.setState({
      loading: true
    });
  }
  handleCancel() {
    this.setState({
      visible: false
    });
  }
  render() {
    const {
      visible,
      loading
    } = this.state;
    return(
      <div>
        <Modal
          visible={visible}
          title="添加商品"
          onOk={this.handleOk.bind(this)}
          onCancel={this.handleCancel.bind(this)}
          footer={[
            <Button key="submit" type="primary" size="large"  onClick={this.handleOk.bind(this)}>
              提交
            </Button>,
            <Button key="back" size="large" onClick={this.handleCancel.bind(this)}>取消</Button>,
          ]}
        > Name:<br/>
      <Input size="small"  />
      Description:<br/>
      <Input size="small"  />
      Count:<br/>
      <Input size="small"  />
      Size:<br/>
      <Input size="small"  />
      Color:<br/>
      <Input size="small"  />
      Price:<br/>
      <Input size="small"  />
      <form enctype="multipart/form-data" id = "file">
      	<input type = "file"  name = "file"  onChange = {this.off}/>
      	<div className = "box"></div>
      </form>
        </Modal>
      </div>
    );
  }
}

//弹出框
class TanChuKuang extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      params: ""
    };
  }
  componentDidMount() {}
  one() {
    $(".tanchu").hide()
  }
  two() {
    //请求数据
    var params = {
      id: $($(".tanchuChi").children().eq(0)).val(),
      name: $($(".tanchuChi").children().eq(1)).val(),
      description: $($(".tanchuChi").children().eq(2)).val(),
      count: $($(".tanchuChi").children().eq(3)).val(),
      size: $($(".tanchuChi").children().eq(4)).val(),
      color: $($(".tanchuChi").children().eq(5)).val(),
      price: $($(".tanchuChi").children().eq(6)).val(),
    }
    this.props.change(http.url + "warehouseUpdate", params).then(response => {
      if(response = "ok") {
        var page = $(".ant-pagination-item-active").children().html()
        var pramas = {
          pageSize: 5,
          page: page
        }
        this.props.change(http.url + "fengye", pramas).then(response => {
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
    $($(".tanchuChi").children().eq(2)).val(params.description)
    $($(".tanchuChi").children().eq(3)).val(params.count)
    $($(".tanchuChi").children().eq(4)).val(params.size)
    $($(".tanchuChi").children().eq(5)).val(params.color)
    $($(".tanchuChi").children().eq(6)).val(params.price)
  }
  render() {
    var params = this.state.params;
    return(
      <div className = "tanchu">
            <div className = "tanchuChi">
              Id:<Input  disabled = "true" value = {params.id}/>
              Name:<Input />
              Description:<Input />
              Count:<Input  />
              Size:<Input  />
              Color:<Input  />
              Price:<Input  />
              <Button onClick = {this.one.bind(this)}>取消</Button>
              <Button onClick = {this.two.bind(this)}>确定</Button>
            </div>
          </div>
    )
  }
}

class WarehouseComponent extends React.Component {
  tianjia() {
    this.refs.tj.showModal()
  }
  constructor(props) {
    super(props);
    this.state = {};
  }
  componentDidMount() {
    $(".tanchu").hide()
  }
  one(target) { //更新
    //获取其中的数据
    var params = {
      id: $($(target).parents("tr").children().eq(0)).html(),
      name: $($(target).parents("tr").children().eq(1)).html(),
      description: $($(target).parents("tr").children().eq(3)).html(),
      count: $($(target).parents("tr").children().eq(4)).html(),
      size: $($(target).parents("tr").children().eq(5)).html(),
      color: $($(target).parents("tr").children().eq(6)).html(),
      price: $($(target).parents("tr").children().eq(7)).html(),
    }
    this.refs.tan.setparams(params)
    $(".tanchu").show()
  }
  two(target) { //删除

    var params = {
      id: $($(target).parents("tr").children().eq(0)).html()
    };
    this.props.Init(http.url + "warehousedelete", params).then(response => {
      var page = $(".ant-pagination-item-active").children().html()
      var pramas = {
        pageSize: 5,
        page: page
      }
      this.props.Init(http.url + "fengye", pramas).then(response => {
        if(response) {
          $(".tanchu").hide()
        }
      });
    });
  }
  onSearch(value) {
    var page = $(".ant-pagination-item-active").children().html()
    var pramas = {
      pageSize: 4,
      page: page,
      data: value
    }
    this.props.Init(http.url + "search", pramas).then(response => {
    });
  }

  render() {
    var operate = ["delete", "update"];
    var api = http.url + "fengye"
    var dic = "cn";
    var qty = 4;
    return(
      <div id="Right">
            <Tianjiashangpin ref = "tj" change = {this.props.Init}/>
        <TanChuKuang ref = "tan" change = {this.props.Init}/>
            <div className="SalingTop">
                <Breadcrumb><span>当前位置：</span><Breadcrumb.Item href="#/home"><Icon type="home" /><span>主页</span>
                </Breadcrumb.Item>
                <Breadcrumb.Item href="#/home/warehouse"><Icon type="user" /><span>商品管理</span></Breadcrumb.Item><Breadcrumb.Item><Icon type="gift" />仓库管理</Breadcrumb.Item></Breadcrumb>
                <Link to="register"><Button className="registerTop" icon="user">注册</Button></Link>
                    <Link to="login"><Button className="loginTop" icon="poweroff">退出</Button></Link>
            </div>
            <div className="WarehouseMain">
                <p>
                    <Search placeholder="输入要搜索的商品" style={{ width: 200,height:32}} onSearch = {this.onSearch.bind(this)}/>
                    <Button type="primary" onClick = {this.tianjia.bind(this)}><Icon type="plus-circle-o"/>添加商品</Button>
                </p>
                <div className="WarehouseTable">
                  <LDataGridComponent  qty = {qty}  two = {this.two.bind(this)} one = {this.one.bind(this)}   dic = {dic} api = {api} operate = {operate}  ref = "cc" ></LDataGridComponent>
                </div>
            </div>
        </div>
    )
  }
}
const mapStateToProps = function(state) {
  return {
    data: state.Saling.dataset || {},
  }
}

export default connect(mapStateToProps, WarehouseAction)(WarehouseComponent)
