import React from 'react';
import {Link} from 'react-router';
import baseUrl from '../../../../common.js';
import '../../../assets/base.scss';
import './detail.scss'

class DetailComponent extends React.Component{
    render(){
        return (
            <ul className="clearfix detail">
                {
                    typeof(this.props.dataset) == 'object' ?
                        this.props.dataset.map( function(obj, idx) {
                            return <li className={'pro-'+obj.id}>
                                <Link to={{
                                    pathname: '/cloth',
                                    hash: '#ahash',
                                    state: {
                                        data: obj
                                    }
                                }}>
                                    <img src={baseUrl.url+obj.imgurl} alt={obj.commodityname}/>
                                    <p>{obj.description}</p>
                                    <p>￥{obj.price}</p>
                                </Link>
                            </li>
                        })
                    : ''
                }
            </ul>
        )
    }
}
export default DetailComponent;
