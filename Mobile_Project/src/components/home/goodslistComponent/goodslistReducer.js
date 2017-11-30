export default function homeReducer(state = {}, action){
    var reState = JSON.parse(JSON.stringify(state));
    switch(action.type){
        case 'BEFORE_REQUEST':
            reState.loading = true;
            break;
        case 'REQUESTED':
            reState.loading = false;
            reState.dataset = action.dataset;
            break;
        default:
            reState.loading = false;
    }
    return reState ;
}