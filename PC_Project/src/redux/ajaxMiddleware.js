import http from '../utils/HttpClient';

export function ajaxMiddleware(middlewareAPI) {
    return function(dispatch){
        return function(action){
            const {types, method = "get", url, data} = action;
            if (!url || !method) {
                return dispatch(action)
            }

            const [a, b, c] = types;

            middlewareAPI.dispatch({
                type: a,
            });
            if(url) {
                var  data1 = action.data ? action.data : {};
                $(".spinnerParent").show()
                return new Promise((resolve, reject) => {
                    http[method](url, data1).then(response => {
                        middlewareAPI.dispatch({
                            type: 'Requested',
                            dataset: JSON.parse(response)
                        });
                        resolve(response);
                    })
                })
            }
        }
    }
}
