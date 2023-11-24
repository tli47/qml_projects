import QtQuick 2.12
import QtQuick.Controls 2.5

Rectangle {
    width: 160
    height: parent.height
    color: "#F6F6F6"

    Rectangle {
        anchors.left: parent.left
        anchors.leftMargin: 20
        width: 120
        height: parent.height
        color: "transparent"

        Image {
            id: logo
            width: 62
            height: 19
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 10
            source: "res/qq-music.png"
        }

        //        Image {
        //            id: logo_txt
        //            width: 62
        //            height: 19
        //            anchors.top: parent.top
        //            anchors.topMargin: 20
        //            anchors.left: logo.right
        //            anchors.leftMargin: 10
        //            source: "res/qq-music.png"
        //        }

        Text {
            id: onlineText
            anchors.top: logo.bottom
            anchors.topMargin: 30
            text: "在线音乐"
            //        font.family: "Helvetica"
            font.pointSize: 8
            color: "#7B7B7B"
        }

        Rectangle {
            width: 121
            height: 22
            id: musicCenter
            anchors.top: onlineText.bottom
            anchors.topMargin: 10
            color: "transparent"
            radius: 3

            property bool selected: false

            function reset()
            {
                musicCenter.selected = false
                musicCenter.color = "transparent"
                music_txt_id.color = "black"
                music_icon.source = "res/music-icon.png"
            }

            Image {
                id: music_icon
                width: 10
                height: 10
                source: "res/music-icon.png"
                anchors.verticalCenter: parent.verticalCenter
            }

            Text {
                id: music_txt_id
                anchors.left: music_icon.right
                anchors.leftMargin: 2
                text: "音乐馆"
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            //            flat: true
            MouseArea {
                id: music_center_id
                anchors.fill: parent
                hoverEnabled: true

                onContainsMouseChanged:  {
                    if (containsMouse) {
                        music_center_id.cursorShape = Qt.PointingHandCursor
                        if (!musicCenter.selected) {
                            musicCenter.color = "#DEDEDE"
                        }
                    }
                    else if (!musicCenter.selected) {
                        musicCenter.color = "transparent"
                    }
                }
                onClicked: {
                    musicCenter.selected = true
                    musicCenter.color = "#1ECD96"
                    music_txt_id.color = "#D2F6EE"
                    music_icon.source = "res/music-icon-green.png"
                    localDownload.reset()
                    auditionList.reset()
                    recentPlay.reset()
                    radar.reset()
                    video.reset()
                }
            }
        }

        Rectangle {
            width: 121
            height: 22
            id: video
            color: "transparent"
            radius: 3
            anchors.top: musicCenter.bottom
            anchors.topMargin: 10
            //            width: parent.width

            property bool selected: false

            function reset()
            {
                video.selected = false
                video.color = "transparent"
                video_txt_id.color = "black"
                video_icon.source = "res/video-icon.png"
            }

            Image {
                id: video_icon
                width: 10
                height: 10
                source: "res/video-icon.png"
                anchors.verticalCenter: parent.verticalCenter
            }
            Text {
                id: video_txt_id
                anchors.left: video_icon.right
                anchors.leftMargin: 2
                text: "视频"
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            MouseArea {
                id: video_area_id
                anchors.fill: parent
                hoverEnabled: true
                onContainsMouseChanged:  {
                    if (containsMouse) {
                        video_area_id.cursorShape = Qt.PointingHandCursor
                        if (!video.selected) {
                            video.color = "#DEDEDE"
                        }
                    }
                    else if (!video.selected) {
                        video.color = "transparent"
                    }
                }
                onClicked: {
                    video.selected = true
                    video.color = "#1ECD96"
                    video_txt_id.color = "#D2F6EE"
                    video_icon.source = "res/video-icon-green.png"
                    localDownload.reset()
                    auditionList.reset()
                    recentPlay.reset()
                    radar.reset()
                    musicCenter.reset()
                }
            }
        }
        Rectangle {
            width: 121
            height: 22
            id: radar
            color: "transparent"
            radius: 3
            anchors.top: video.bottom
            anchors.topMargin: 10
            //            width: parent.width

            property bool selected: false

            function reset()
            {
                radar.selected = false
                radar.color = "transparent"
                radar_txt_id.color = "black"
                radar_icon.source = "res/radar-icon.png"
            }

            Image {
                id: radar_icon
                width: 10
                height: 10
                source: "res/radar-icon.png"
                anchors.verticalCenter: parent.verticalCenter
            }
            Text {
                id: radar_txt_id
                anchors.left: radar_icon.right
                anchors.leftMargin: 2
                text: "雷达"
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            MouseArea {
                id: radar_ared_id
                anchors.fill: parent
                hoverEnabled: true
                onContainsMouseChanged:  {
                    if (containsMouse) {
                        radar_ared_id.cursorShape = Qt.PointingHandCursor
                        if (!radar.selected) {
                            radar.color = "#DEDEDE"
                        }
                    }
                    else if (!radar.selected) {
                        radar.color = "transparent"
                    }
                }
                onClicked: {
                    radar.selected = true
                    radar.color = "#1ECD96"
                    radar_txt_id.color = "#D2F6EE"
                    radar_icon.source = "res/radar-icon-green.png"
                    localDownload.reset()
                    auditionList.reset()
                    recentPlay.reset()
                    musicCenter.reset()
                    video.reset()
                }
            }
        }
        Text {
            id: myMusicText
            anchors.top: radar.bottom
            anchors.topMargin: 30
            text: "我的音乐"
            //        font.family: "Helvetica"
            font.pointSize: 8
            color: "#7B7B7B"
        }
        Rectangle {
            width: 121
            height: 22
            color: "transparent"
            radius: 3
            id: localDownload
            anchors.top: myMusicText.bottom
            anchors.topMargin: 10

            property bool selected: false

            function reset()
            {
                localDownload.selected = false
                localDownload.color = "transparent"
                local_download_txt.color = "black"
                local_download.source = "res/pc-icon.png"
            }

            Image {
                id: local_download
                width: 10
                height: 10
                source: "res/pc-icon.png"
                anchors.verticalCenter: parent.verticalCenter
            }
            Text {
                id: local_download_txt
                anchors.left: local_download.right
                anchors.leftMargin: 2
                text: "本地和下载"
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            MouseArea {
                id: local_download_area_id
                anchors.fill: parent
                hoverEnabled: true
                onContainsMouseChanged:  {
                    if (containsMouse) {
                        local_download_area_id.cursorShape = Qt.PointingHandCursor
                        if (!localDownload.selected) {
                            localDownload.color = "#DEDEDE"
                        }
                    }
                    else if (!localDownload.selected) {
                        localDownload.color = "transparent"
                    }
                }
                onClicked: {
                    localDownload.selected = true
                    localDownload.color = "#1ECD96"
                    local_download_txt.color = "#D2F6EE"
                    local_download.source = "res/pc-icon-green.png"
                    auditionList.reset()
                    recentPlay.reset()
                    musicCenter.reset()
                    video.reset()
                    radar.reset()
                }
            }
        }
        Rectangle {
            width: 121
            height: 22
            id: recentPlay
            color: "transparent"
            radius: 3
            anchors.top: localDownload.bottom
            anchors.topMargin: 10

            property bool selected: false

            function reset()
            {
                recentPlay.selected = false
                recentPlay.color = "transparent"
                recent_txt_id.color = "black"
                recent.source = "res/recent-icon.png"
            }

            Image {
                id: recent
                width: 10
                height: 10
                source: "res/recent-icon.png"
                anchors.verticalCenter: parent.verticalCenter
            }
            Text {
                id: recent_txt_id
                anchors.left: recent.right
                anchors.leftMargin: 2
                text: "最近播放"
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            MouseArea {
                id: recent_area_id
                anchors.fill: parent
                hoverEnabled: true

                onContainsMouseChanged:  {
                    if (containsMouse) {
                        recent_area_id.cursorShape = Qt.PointingHandCursor
                        if (!recentPlay.selected) {
                            recentPlay.color = "#DEDEDE"
                        }
                    }
                    else if (!recentPlay.selected) {
                        recentPlay.color = "transparent"
                    }
                }
                onClicked: {
                    recentPlay.selected = true
                    recentPlay.color = "#1ECD96"
                    recent_txt_id.color = "#D2F6EE"
                    recent.source = "res/recent-icon-green.png"
                    auditionList.reset()
                    localDownload.reset()
                    musicCenter.reset()
                    video.reset()
                    radar.reset()
                }
            }
        }
        Rectangle {
            width: 121
            height: 22
            color: "transparent"
            radius: 3
            id: auditionList
            anchors.top: recentPlay.bottom
            anchors.topMargin: 10

            property bool selected: false

            function reset()
            {
                auditionList.selected = false
                auditionList.color = "transparent"
                audition_txt_id.color = "black"
                audition.source = "res/audition-icon.png"
            }

            Image {
                id: audition
                width: 10
                height: 10
                source: "res/audition-icon.png"
                anchors.verticalCenter: parent.verticalCenter
            }
            Text {
                id: audition_txt_id
                anchors.left: audition.right
                anchors.leftMargin: 2
                text: "试听列表"
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            MouseArea {
                id: audition_id
                anchors.fill: parent
                hoverEnabled: true
                onContainsMouseChanged:  {
                    if (containsMouse) {
                        audition_id.cursorShape = Qt.PointingHandCursor
                        if (!auditionList.selected) {
                            auditionList.color = "#DEDEDE"
                        }
                    }
                    else if (!auditionList.selected) {
                        auditionList.color = "transparent"
                    }
                }
                onClicked: {
                    // FIXME: find a easy method


                    auditionList.selected = true
                    auditionList.color = "#1ECD96"
                    audition_txt_id.color = "#D2F6EE"
                    audition.source = "res/audition-icon-green.png"
                    recentPlay.reset()
                    localDownload.reset()
                    musicCenter.reset()
                    video.reset()
                    radar.reset()
                }
            }
        }
    }
}
