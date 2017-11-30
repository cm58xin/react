export function Init(api,params){
    return {
        types: ['BeforeRequest', 'Requested', 'RequestError'],
        url:api,
        data:params
    }
}