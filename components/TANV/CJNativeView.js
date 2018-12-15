import React from 'react';
import PropTypes from 'prop-types';
import { requireNativeComponent } from 'react-native';

class TANVCJNativeView extends React.Component {
    static propTypes = {
        /**
         * config对象 {
         *     userId,
         *     appId,
         *     appKey,
         * }
         */
        config: PropTypes.object,
        type: PropTypes.number
    }
    static defaultProps = {
        type: 3 //巨鲨原生广告的样式类型
    }
    render(){
        return <NativeView {...this.props} />
    }
}

const NativeView = requireNativeComponent('TANVCJNativeView', TANVCJNativeView);

export default TANVCJNativeView;