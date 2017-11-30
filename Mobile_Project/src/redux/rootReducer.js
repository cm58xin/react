import {combineReducers} from 'redux';

import goods from '../components/goods/goodsReducer'
import buycar from '../components/buycar/buycarReducer'
import order from '../components/my/Childcomponent/order/orderReducer'
import shoucang from '../components/my/Childcomponent/shoucang/shoucangReducer'
import pingjia from '../components/my/Childcomponent/pingjia/pingjiaReducer'
import home from '../components/home/homeReducer'
import cloth from '../components/home/cloth/clothReducer'
import pay from '../components/buycar/pay/payReducer'


import zhifu from   '../components/my/Childcomponent/zhifu/zhifuReducer';
import fahuo from   '../components/my/Childcomponent/fahuo/fahuoReducer';
import shouhuo from     '../components/my/Childcomponent/shouhuo/shouhuoReducer';
import tuikuan from     '../components/my/Childcomponent/tuikuan/tuikuanReducer';
import shezhi from  '../components/my/Childcomponent/shezhi/shezhiReducer';
import xiugaigerenxinxi from   '../components/my/Childcomponent/xiugaigerenxinxi/xiugaigerenxinxiReducer';
import address from  '../components/my/Childcomponent/address/addressReducer';
import addressedit from   '../components/my/Childcomponent/addressedit/addresseditReducer';

import popup from   '../components/my/Childcomponent/popup/popupReducer';

import goodslist from '../components/home/goodslistComponent/goodslistReducer';

export default combineReducers({
    goods,
    buycar,
    home,
    order,
    shoucang,
    pingjia,
    cloth,
    pay,
    zhifu,
    fahuo,
    shouhuo,
    tuikuan,
    shezhi,
    xiugaigerenxinxi,
    address,
    addressedit,
    popup,
    goodslist
})
