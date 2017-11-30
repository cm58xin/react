import $ from 'jquery'

export default function payReducer(state = {}, action){
    var reState = JSON.parse(JSON.stringify(state));
    switch(action.type){
        case 'SHOW':
            reState.show = true;
            reState.orders = action.Orders;
            break;
        case 'CLOSE':
            reState.show = false;
            break;
        case 'pay_REQUEST':
            reState.loading = true;
            reState.show = false;
            break;
        case 'pay_REQUESTED':
            reState.loading = false;
            reState.datasetpay = action.dataset;
            break;
        default:

            reState.loading = false;
    }
    return reState ;
}