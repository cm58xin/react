import $ from 'jquery'
const types = ['BEFORE_REQUEST', 'REQUESTED', 'REQUESTED_ERROR'];

export function Init(){
    return {
        type:types,
        url: ''

    }
}
