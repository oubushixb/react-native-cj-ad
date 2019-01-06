import VUNGLECJVideo from '../VUNGLE/CJVideo';
import UNITYCJVIdeo from '../UNITY/CJVideo';
export default {
    init,
    show
}

let videos = [];
let _config = [];
let isVideoInit = false;

function init(configArray) {
    _config = configArray;

    configArray.map((config) => {

        if (config.type == 'VUNGLE') {
            VUNGLECJVideo.init(config);
            videos.push(VUNGLECJVideo);
        }

        if (config.type == 'UNITY') {
            UNITYCJVIdeo.init(config);
            videos.push(UNITYCJVIdeo);
        }

    });

    isVideoInit = true;
}

let lastIndex = 0;

function show() {

    if (!isVideoInit) {
        return false;
    }

    let tasks = [];

    videos.map(video => {
        tasks.push(video.isReady());
    })

    return new Promise((resolve, reject) => {

        Promise.all(
            tasks
        ).then((result) => {

            let { isReady } = result[lastIndex];

            if (isReady != 'false') {
                //_config[lastIndex]
                videos[lastIndex].show().then((result) => {
                    resolve(result);
                });
                lastIndex++;

                if (lastIndex >= videos.length) {
                    lastIndex = 0;
                }

                return;
            }

            for (var i = 0; i < result.length; i++) {

                let { isReady } = result[i];

                if (isReady != 'false') {
                    hasAD = true;
                    //_config[i]
                    videos[i].show().then((result) => {
                        resolve(result);
                    });
                    break;
                }

            }

        })

    });

}