import React from 'react';
import {connect} from 'react-redux';
import $ from 'jquery'
import { Input ,Icon } from 'antd';
const Search = Input.Search;

import http from './../../../common.js';

import * as headAction from './headAction';

import './header.scss'
import './../../assets/base.scss'
class HeadComponent extends React.Component{

   constructor(props, context) {
        super(props, context);
        this.state = {

            };
     }

     componentDidMount(){

    }
   dingwei(){

         $('#allmap').toggleClass('show');

         var map = new BMap.Map("allmap"); //实例化一个地图对象
          var point = new BMap.Point(116.331398,39.897445); //设置地图中心的位置
          map.centerAndZoom(point,12); //设置地图元素的可视层

          // map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
          // map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用

          function myFun(result){
             var cityName = result.name;
              map.setCenter(cityName);
              $('.weizhi').children('span').text(cityName);
          }

          var myCity = new BMap.LocalCity();
          myCity.get(myFun);


          //点击获取坐标
          map.addEventListener("click",function(e){

             // 清除地图上的所有覆盖物

               map.clearOverlays();

               //存储经纬度
                 var   lng = e.point.lng;
                 var  lat = e.point.lat;

               //在地图上面描点
               var marker = new BMap.Marker(new BMap.Point(lng,lat));  // 创建标注

             // 把marker添加到地图上
               map.addOverlay(marker);

               marker.enableDragging();    //可拖拽

               var gc = new BMap.Geocoder();
               //获取地址的数据地址
               var pt = e.point;
               gc.getLocation(pt, function(rs){

               var addComp = rs.addressComponents;

               var  address = addComp.province +  addComp.city + addComp.district + addComp.street + addComp.streetNumber;

               //画图
               var label = new BMap.Label(address,{offset:new BMap.Size(20,-10)});
                marker.setLabel(label);
                });
              });
    }

   Search(){
      var name =  $('.ant-input').val();

      var data={
          name:name
       }
      var api = http.url2+'history';

      this.props.Init(api,data).then(response=>{
             console.log(response)
      })
   }

   show(){
       $('#history').addClass('show');
       $('.el-icon-message').remove();

       var  qty = $('#head').children().length;
       if(qty===2){
          $('#head').append($('<span class="quxiao">取消</span>'));
       }

      $('.quxiao').click(function(){
           $('#history').removeClass('show');
           $('.quxiao').remove();
           var  qty = $('#head').children().length;
           if(qty===2){
              $('#head').append($('<i class="el-icon-message"></i>'));
           }
      })

   }

    render(){
        return (
            <div id="head">
                <span className="weizhi"><Icon type="environment-o" onClick={this.dingwei}/><span></span></span>
                <Search placeholder="输入搜索的商品" onSearch={this.Search.bind(this)}  onClick={this.show} />
                <i className="el-icon-message"></i>
            </div>
        )
    }
}





const mapStateToProps = function(state){
    return {

    }
}

export default connect(mapStateToProps, headAction)(HeadComponent)
