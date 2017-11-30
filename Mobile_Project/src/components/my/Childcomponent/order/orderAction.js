import $ from 'jquery';
const types = ['BEFORE_REQUEST', 'REQUESTED', 'REQUESTED_ERROR'];

export function Init(api){
    return {
        type:['order_REQUEST', 'order_REQUESTED', 'order_ERROR'],
        url:api,
       
    }
}
