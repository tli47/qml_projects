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
            anchors.left: parent.left
            anchors.leftMargin: 13
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
            Text {
                anchors.fill: parent
                text: "音乐馆"
                verticalAlignment: Text.AlignVCenter
            }
            //            flat: true
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onContainsMouseChanged:  {
                    musicCenter.color = containsMouse ? "#DEDEDE" : "transparent"
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
            Text {
                anchors.fill: parent
                text: "视频"
                verticalAlignment: Text.AlignVCenter
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onContainsMouseChanged:  {
                    video.color = containsMouse ? "#DEDEDE" : "transparent"
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
            Text {
                anchors.fill: parent
                text: "雷达"
                verticalAlignment: Text.AlignVCenter
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onContainsMouseChanged:  {
                    radar.color = containsMouse ? "#DEDEDE" : "transparent"
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
            Text {
                anchors.fill: parent
                text: "本地和下载"
                verticalAlignment: Text.AlignVCenter
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onContainsMouseChanged:  {
                    localDownload.color = containsMouse ? "#DEDEDE" : "transparent"
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
            Text {
                anchors.fill: parent
                text: "最近播放"
                verticalAlignment: Text.AlignVCenter
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onContainsMouseChanged:  {
                    recentPlay.color = containsMouse ? "#DEDEDE" : "transparent"
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
            Text {
                anchors.fill: parent
                text: "试听列表"
                verticalAlignment: Text.AlignVCenter
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onContainsMouseChanged:  {
                    auditionList.color = containsMouse ? "#DEDEDE" : "transparent"
                }
            }
        }
    }
}
