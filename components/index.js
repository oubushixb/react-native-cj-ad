import ManagerVideo from './Manager/Video';

export default {
    initVideo,
    showVideo
}

function initVideo(configArray){
    return ManagerVideo.init(configArray);
}

function showVideo(){
    return ManagerVideo.show();
}