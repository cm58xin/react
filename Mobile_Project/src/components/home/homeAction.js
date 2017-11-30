import baseUrl from './../../../common.js';
const types = ['BEFORE_REQUEST', 'REQUESTED', 'REQUESTED_ERROR'];

export function Init(){
    return {
        type: types,
        url: baseUrl.url2+'productlist'
    }
}

