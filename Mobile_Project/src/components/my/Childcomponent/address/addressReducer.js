export default function addressReducer(state ={}, action){
	var restate = JSON.parse(JSON.stringify(state));
	switch(action.type){
		case 'BeforReqeust':
			restate.msg = action.msg;
			restate.loading = true;
			break;
		case 'Requested':
			restate.loading = false;
			restate.dataset = action.dataset;
			break;
		case 'error':
			restate.loading = false;
			break;
		case 'EDIT_MSG':
			restate.msg = action.msg;
			break;
		default:
			restate.loading = false;
	}
	return restate;
}