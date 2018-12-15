import React from 'react';
import PropTypes from 'prop-types';
import { requireNativeComponent } from 'react-native';

class GDTCJNativeView extends React.Component {
    static propTypes = {
        config: PropTypes.object
    }
    render(){
        return <NativeView {...this.props} />
    }
}

const NativeView = requireNativeComponent('GDTCJNativeView', GDTCJNativeView);

export default GDTCJNativeView;