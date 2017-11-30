import baseUrl from './../../../../common.js';
const types = ['BEFORE_REQUEST', 'REQUESTED', 'REQUESTED_ERROR'];

export function Init(param){
    var params = new Object;
    params.type = param;
    return {
        type: types,
        url: baseUrl.url2+'SelectProducts',
        data: params
    }
}
