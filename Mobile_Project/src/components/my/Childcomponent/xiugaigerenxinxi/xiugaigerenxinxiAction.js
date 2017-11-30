export function Init(){
	return {
		types:['BeforReqeust', 'Requested', 'error'],
		url:'',
        type:'',
		data:{
			status:'',
			username:''
		},
		method: 'get'
	}
}