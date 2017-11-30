export function Init(api,data){
    return {
        types: ['BeforeRequest', 'Requested', 'RequestError'],
        url: api,
        data:data
    }
}
