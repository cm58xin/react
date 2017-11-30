import $ from 'jquery'
export default function clothReducer(state = {}, action){
    var reState = JSON.parse(JSON.stringify(state));
    switch(action.type){
        case 'CHOOSE': 
            reState.show = true;
            break;
        case 'CLOSE': 
            reState.show = false;
            break;
        case 'COUNT': 
            reState.num = action.num;
            break;
        case 'ADD_ACTIVE':
            reState.addClass = action.className;
            break;
        case 'ADDACTIVE':
            reState.addClass1 = action.className;
            break;
        case 'BEFORE_REQUEST':
            reState.loading = true;
            break;
        case 'REQUESTED':
            reState.loading = false;
            reState.show = false;
            break;
        default:
            reState.loading = false;
     }
    return reState ;
}