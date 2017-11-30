export function Init(){
	return {
		types:['BeforReqeust', 'Requested', 'error'],
		url:'http://localhost',
		data:{
			status:'',
			username:''
		},
		method: 'get'
	}
}