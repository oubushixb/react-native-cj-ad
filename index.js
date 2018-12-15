
/*import { NativeModules } from 'react-native';

const { RNCjAd } = NativeModules;

export default RNCjAd;*/

import GDTCJBanner from './components/GDT/CJBanner';
import GDTCJNativeView from './components/GDT/CJNativeView';

import TANVCJNativeView from './components/TANV/CJNativeView';

import ADMOBCJ from './components/ADMOB/CJ';
import ADMOBCJBanner from './components/ADMOB/CJBannerView';
import ADMOBCJInterstitial from './components/ADMOB/CJInterstitial';

let objectForExport = {
    GDTCJBanner,
    GDTCJNativeView,

    TANVCJNativeView,

    ADMOBCJ,
    ADMOBCJBanner,
    ADMOBCJInterstitial
}

export {
    GDTCJBanner,
    GDTCJNativeView,

    TANVCJNativeView,

    ADMOBCJ,
    ADMOBCJBanner,
    ADMOBCJInterstitial
};

export default objectForExport;