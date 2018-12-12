using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Cj.Ad.RNCjAd
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNCjAdModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNCjAdModule"/>.
        /// </summary>
        internal RNCjAdModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNCjAd";
            }
        }
    }
}
