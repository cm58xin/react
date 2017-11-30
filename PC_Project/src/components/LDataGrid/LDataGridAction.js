export function Fenye(api, page, pageSize){
    return {
        types: ['BeforeRequest', 'Requested', 'RequestError'],
        url: api,
        data: {page: page, pageSize: pageSize}
    }
}

