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
export function edit(idx){
	return {
		type:'EDIT_MSG',
		msg:{
			addressId:idx
		}
	}
}