
import http from './../../../../../common.js';

export function Init(api){
	return {
		types:['BeforReqeust', 'Requested', 'error'],
		url:api,
		data:{

		},
		method: 'get'
	}
}
export function payNow(orderId){
	console.log('order', orderId);
	var api = http.url2 + 'setmorder';
	return{
		types:['BeforReqeust', 'Requested', 'error'],
		url:api,
		data:{
			orderId: orderId,
			status:'已完成'
		}
	}
}
export function getZhifuMsg(data){
	return{
		type:'ZHIFUMSG',
		data:data
	}
}
export function cancelOrder(orderId){
	var api = http.url2 + 'Tdeletmorder';
	return {
		types:['BeforReqeust', 'Requested', 'error'],
		url:api,
		data:{
			orderId:orderId
		}

	}
}
