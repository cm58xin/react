export function Init(){
	return {
		type:'Init',
		data:'444'
	}
}
export function getMsg(num){
		return{
			type:'GET_FOCUS',
			num:num
		}

		
}

export function Yanzheng(data){
	console.log(data);
	return {
		types:['BeforReqeust', 'Requested', 'error'],
		url:'http://localhost',
		data:{'paypassword': data}
	}
}
export function Delete(){
	return {
		type:'DeleteNum'
	}
}
export function Close(){
	return {
		type:'ClosePopup'
	}
}
export function PopupShow(){
	return {
		type:'OpenPopup'
	}
}
