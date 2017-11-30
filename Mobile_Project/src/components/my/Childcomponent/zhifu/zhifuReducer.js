export default function zhifuReducer(state ={}, action){
	var restate = JSON.parse(JSON.stringify(state));
	switch(action.type){
		case 'BeforReqeust':
			restate.loading = true;
			break;
		case 'Requested':
			var name = action.name? 'dataset'+action.name : 'dataset';
			// restate.loading = false;
			restate[name] = action[name];
			break;
		case 'error':
			restate.loading = false;
			break;
		case 'PAYNOW':
			restate.pay = true;
			restate.popup = true;
			restate.totals = action.num;
			break;
		case 'CANCEL_ORDER':
			break;
		case 'ZHIFUMSG':
			restate.dataset = action.data;
			break;
		default:
			restate.loading = false;
			restate.popup = false;
			restate.totals =  restate.totals? restate.totals : 0;
	}
	return restate;
}