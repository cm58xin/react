export function Init(api){
	return{
		types:['BeforReqeust', 'Requested', 'error'],
		url:api,
		method: 'get'
	}
}
export function Remind(orderId){
	return{
		type:'Remind',
		data:{
			orderId:orderId
		}
	}
}
