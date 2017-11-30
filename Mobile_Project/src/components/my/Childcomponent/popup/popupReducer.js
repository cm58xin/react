export default function popupReducer(state={}, action){
	var restate = JSON.parse(JSON.stringify(state));
	switch(action.type){
		case 'BeforReqeust':
			restate.loading = true;
			break;
		case 'Requested':
			// alert('支付成功!');
			restate.show1 = false;
			restate.data = [];
			// restate.loading = false;
			// restate.dataset = action.dataset;
			break;
		case 'error':
			restate.loading = false;
			break;
		case 'GET_FOCUS':
			restate.data.push(action.num);
			break;
		case 'ClosePopup':
			restate.show1 = false;
			restate.data = [];
			break;
		case 'OpenPopup':
			restate.show1 = true;
			break;
		case 'Yanzheng':
			restate.data.push(action.num);
			break;
		case 'DeleteNum':
			restate.data.pop();
			break;
		default:
			restate.data = restate.data || [];
			// restate.show1 = false;
		break;
	}
	return restate;
}