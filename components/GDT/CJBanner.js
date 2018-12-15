import PropTypes from 'prop-types';
import React from 'react';
import { requireNativeComponent } from 'react-native';

class GDTBannerView extends React.Component {
    render() {
        return <GDTCJBanner {...this.props} />;
    }
}

GDTBannerView.propTypes = {
    /**
     * A Boolean value that determines whether the user may use pinch
     * gestures to zoom in and out of the map.
     */
    zoomEnabled: PropTypes.bool,
    onADError: PropTypes.func
};

const GDTCJBanner = requireNativeComponent('GDTCJBanner', GDTBannerView);

module.exports = GDTBannerView;