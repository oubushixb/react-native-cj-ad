import PropTypes from 'prop-types';
import React from 'react';
import { requireNativeComponent } from 'react-native';

class ADMOBCJBannerView extends React.Component {
    render() {
        return <NativeBanner {...this.props} />;
    }
}

ADMOBCJBannerView.propTypes = {
    config: PropTypes.object,
    onADError: PropTypes.func
};

const NativeBanner = requireNativeComponent('ADMOBCJBanner', ADMOBCJBannerView);

module.exports = ADMOBCJBannerView;