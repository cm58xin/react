export default function fahuoReducer(state = {}, action){
	var restate = JSON.parse(JSON.stringify(state));

	switch(action.type){
		case 'BeforReqeust':
			restate.loading = true;
			break;
		case 'Requested':
			restate.loading = false;
			restate.dataset = action.dataset;
			break;
		case 'error':
			restate.loading = false;
			break;
		default:
			restate.loading = false;
	}
	return restate;
}