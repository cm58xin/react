/*
* @Author: Marte
* @Date:   2017-11-14 17:41:01
* @Last Modified by:   Marte
* @Last Modified time: 2017-11-25 11:10:24
*/

import baseUrl from './../../../common.js'
import $ from 'jquery';
const types = ['BEFORE_REQUEST', 'REQUESTED', 'REQUESTED_ERROR'];

export function chooses(){
    return {
        type: 'CHOOSE',
    }
}
export function close(){
    return {
        type: 'CLOSE'
    }
}
export function toCar(obj){
    if($('.active').first().text() && $('.active').last().text()){
        var params = new Object;
        params.id = obj[0].id;
        params.imgurl = obj[0].imgurl;
        obj[0].colortype ? params.colortype = $('.active').first().text(): '';
        params.price = obj[0].price;
        obj[0].sizetype ? params.sizetype = $('.active').last().text(): '';
        params.num = $('.num').text();
        params.name = obj[0].commodityname;
        params.description = obj[0].description;
        return {
            type: types,
            url: baseUrl.apiBaseUrl+'/gocarlist',
            data: params
        }
    }
}
export function count(can){
    var num ;
    if(can == 'increase'){
        num = $('.num').text()*1+1;
        return {
            type:'COUNT',
            num: num
        }
    }else if(can == 'decrease'){
        if($('.num').text() == 1){
            return {
                type: 'COUNT',
                num: 1
            }
        }
        num = $('.num').text()*1-1;
        return {
            type: 'COUNT',
            num: num
        }
    }
}
export function addActive(className, e){
    return{
        type: 'ADD_ACTIVE',
        className: className
    }
}
export function addActive1(className, e){
    return{
        type: 'ADDACTIVE',
        className: className
    }
}
