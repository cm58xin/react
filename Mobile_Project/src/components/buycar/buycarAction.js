import $ from 'jquery';
import http from './../../../common.js';

const types = ['BEFORE_REQUEST', 'REQUESTED', 'REQUESTED_ERROR'];

export function Init(){
    var api = http.url2 + 'Mcarlist';
    return {
        type:types,
        url: api,


    }
}

export function edit(){
    return{
        type:'EDIT',
    }
}

export function finish(){
    return{
        type:'FINISH',
    }
}

export function deleted(idx){
    var api = http.url2 + 'Mdeletcarlist';
    var id = [];
    id.push(idx)

    return{
        type:['before_delete', 'success_delete', 'error_delete'],
        url:api,
        data:{id:id},
    }
}

export function decrease(idx){

    return{
        type: 'DECREASE',
        idx: idx
    }
}
export function increase(idx){
    return{
        type: 'INCREASE',
        idx: idx
    }
}
export function buycarChecked(idx,event){


    if(event.target.checked){

        return{
            type:'CHECKED',
            idx:idx
        }
    }else{

        return{
            type:'CHECKED_OUT',
            idx:idx
        }

    }
}
export function topay(order1){
    var checkedOrder = [];

    if(order1.props.checked.length == 0){

            return{
                type:'cancel'
            }
        }
    (order1.props.dataset || []).forEach(function(item,idx){

        (order1.props.checked).forEach(function(i,index){

            if(i == idx){
                checkedOrder.push(item)
            }
        })
    });

    var params = new Object();
    var api = http.url2 + 'Insertorder';
    params.ordercontent = JSON.stringify(checkedOrder);
    params.status = '未完成';
    params.orderId = parseInt(Math.random()*1000000000);

    sessionStorage.setItem('orderid',JSON.stringify(params.orderId))
    return{
    type:types,
    url: api,
    data:params,
    }
}
