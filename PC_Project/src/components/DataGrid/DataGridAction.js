export function dataFenye(api, data){
    return {
        types: ['BeforeRequest', 'Requested', 'RequestError'],
        url: api,
        // data: {page: page, pageSize: pageSize,condition:condition,text:text,id:id}
        data:data
    }
}

