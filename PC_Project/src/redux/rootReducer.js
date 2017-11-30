import {combineReducers} from 'redux';

import DataGrid from '../components/DataGrid/DataGridReducer';
import LDataGrid from '../components/LDataGrid/LDataGridReducer';

import Saling from '../components/Right/Saling/SalingReducer';
import Sold from '../components/Right/Sold/SoldReducer';
import Pingjia from '../components/Right/Pingjia/PingjiaReducer';

import Warehouse from '../components/Right/warehouse/WarehouseReducer';

import Supplier from '../components/Right/supplier/SupplierReducer';

import  MemberList from '../components/Right/memberList/MemberListReducer';

import  Limit from '../components/Right/limit/LimitReducer';





export default combineReducers({
    LDataGrid,
     DataGrid,
     Saling,
     Warehouse,
     Pingjia,
     Supplier,
     MemberList,
     Limit
})
