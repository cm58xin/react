export default function orderReducer(state = {}, action){
    var reState = JSON.parse(JSON.stringify(state));
    switch(action.type){

        case 'order_REQUEST':
            reState.loading = true;
            break;
        case 'order_REQUESTED':
            reState.loading = false;
            
            reState.datasetOrder= action.dataset;
            break;
        default:
            reState.loading = false;
    }
    return reState ;
}