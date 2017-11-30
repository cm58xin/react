import http from '../utils/HttpClient';

export function ajaxMiddleware(middlewareAPI) {
    return function(dispatch){
        return function(action){
            const {type, method = "get", url, data,name=""} = action;
            if (!url || !method) {
                return dispatch(action);
            };
            const [a,b,c] = action.type;
            middlewareAPI.dispatch({
                type: a,
            });


            if(url) {
                var  data1 = action.data ? action.data : {};
               
                return new Promise((resolve, reject) => {
                    http[method](url, data1).then(response => {
                        middlewareAPI.dispatch({
                            type: b,
                            dataset: JSON.parse(response)
                        });
                        resolve(response);
                    })
                })
            }
        }
    }
}