import $ from 'jquery'
const types = ['BEFORE_REQUEST', 'REQUESTED', 'REQUESTED_ERROR'];
import http from './../../../../../common.js'
export function Init(){
    return {
        type:types,
        url: http.url2+'Mcarlist'

    }
}
