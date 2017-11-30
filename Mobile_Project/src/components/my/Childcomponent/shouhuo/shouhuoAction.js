import http from './../../../../../common.js';

export function Init(){
    var api = http.url2 + 'Tgetmorderwan';
	return{
		types:['BeforReqeust', 'Requested', 'error'],
		// url:'http://10.3.137.204:1000/Tgetmorderwan',
		url:api,
		method: 'get'
	}
}
export function Receive(Id){
	return {
		type:'Receive',
		data:{
			id:Id,
			status:'已收货'
		}
	}
}
