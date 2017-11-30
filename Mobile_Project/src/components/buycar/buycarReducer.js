import $ from 'jquery'

export default function buycarReducer(state = {}, action){
    var reState = JSON.parse(JSON.stringify(state));
    switch(action.type){
        case 'INCREASE':
            reState.dataset[action.idx].num ++;
            if(reState.checked.indexOf(action.idx)>-1){
                reState.totalPrice = reState.dataset[action.idx].price*1 + reState.totalPrice*1;
            }

            break;

        case 'EDIT':
            reState.show=true;
            
            break;

        case 'FINISH':
            reState.show=false;
            
            break;


        case 'DECREASE':
            if(reState.dataset[action.idx].num == 1){
                return reState;
            }
            if(reState.checked.indexOf(action.idx)>-1){
                reState.totalPrice =  reState.totalPrice*1 - reState.dataset[action.idx].price*1;
            }
            reState.dataset[action.idx].num --;

            break;

        case 'CHECKED':
            if(reState.dataset){

                reState.checked.push(action.idx);
                var totalPrice1 = reState.totalPrice || 0;
                var totalPrice = reState.dataset[action.idx].num*reState.dataset[action.idx].price;
                    reState.totalPrice = totalPrice.toFixed(2)*1 + totalPrice1*1;
            }
            break;

            case 'CHECKED_OUT':
            if(reState.dataset){
                if(reState.checked.indexOf(action.idx)>-1){
                    var i = reState.checked.indexOf(action.idx);
                    reState.checked.splice(i,1);
                    var totalPrice1 = reState.totalPrice;
                    var totalPrice = reState.dataset[action.idx].num*reState.dataset[action.idx].price;
                    reState.totalPrice = totalPrice1*1 - totalPrice;
                }


            }
            break;


        case 'BEFORE_REQUEST':
            reState.loading = true;
            break;

        case 'REQUESTED':
            reState.loading = false;
            reState.dataset= action.dataset;
            break;

         case 'before_delete':
            reState.loading = true;
            break;

        case 'success_delete':
            reState.loading = false;
            reState.deleted= action.dataset;
            break;

        default:

            reState.loading = false;
            reState.checked = reState.checked ? reState.checked :[];

    }
    return reState ;
}
