
/*import { NativeModules } from 'react-native';

const { RNCjAd } = NativeModules;

export default RNCjAd;*/

import GDTCJBanner from './components/GDT/CJBanner';
import GDTCJNativeView from './components/GDT/CJNativeView';

import TANVCJNativeView from './components/TANV/CJNativeView';
import TANVCJSplash from './components/TANV/CJSplash';

import ADMOBCJ from './components/ADMOB/CJ';
import ADMOBCJBanner from './components/ADMOB/CJBannerView';
import ADMOBCJInterstitial from './components/ADMOB/CJInterstitial';

import UNITYCJVideo from './components/UNITY/CJVideo';

import VUNGLECJVideo from './components/VUNGLE/CJVideo';

import Manager from './components/index';

let objectForExport = {
    GDTCJBanner,
    GDTCJNativeView,

    TANVCJNativeView,
    TANVCJSplash,

    ADMOBCJ,
    ADMOBCJBanner,
    ADMOBCJInterstitial,

    UNITYCJVideo,

    VUNGLECJVideo,

    Manager
}

export {
    GDTCJBanner,
    GDTCJNativeView,

    TANVCJNativeView,
    TANVCJSplash,

    ADMOBCJ,
    ADMOBCJBanner,
    ADMOBCJInterstitial,
    
    UNITYCJVideo,

    VUNGLECJVideo,

    Manager
};

export default objectForExport;