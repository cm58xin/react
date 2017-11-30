import $ from 'jquery';
import http from './../../../../common.js';
const types = ['BEFORE_REQUEST', 'REQUESTED', 'REQUESTED_ERROR'];

export function Init(){
    var order = JSON.parse(sessionStorage.getItem('order'));
    var id = [];
    var api = http.url2 + 'Mdeletcarlist';

    if(order.length>0){
        order.forEach(function(item,i){
            id.push(item.id);
        })
    }

    return{
        type:types,
        url:api,
        data:{id:id},

    }
}
export function show(c){
    return {
        type:'SHOW',
        Orders: c.props.checkedPay,

    }
}
export function close(){
    return {
        type:'CLOSE',
    }
}
export function pay(){
    var orderId = sessionStorage.getItem('orderid');
    var api = http.url2 + 'Tsetmorder';
    sessionStorage.removeItem('dataset');
    sessionStorage.removeItem('totalPrice');
    return{
        type:['pay_REQUEST', 'pay_REQUESTED', 'pay_ERROR'],
        url:api,
        data:{orderId:orderId,status:'已完成'},

    }
}
