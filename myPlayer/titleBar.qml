import QtQuick 2.0
import QtQuick.Controls 2.2

//标题栏
Rectangle {
    id: mainTitle
    width: 480
    height: 58
    color: "#FAFAFA"
//    color: "red"

    property bool isDoubleClick: false
    property bool isFullScreen: false

    //处理鼠标移动后窗口坐标逻辑
    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton  //只处理鼠标左键
        onPressed: {    //鼠标左键按下事件
            isDoubleClick = false
            clickPos = Qt.point(mouse.x, mouse.y)
        }
        onPositionChanged: {    //鼠标位置改变
            if (!isDoubleClick&&!isFullScreen) {
                //计算鼠标移动的差值
                var delta = Qt.point(mouse.x - clickPos.x, mouse.y - clickPos.y)
                //设置窗口坐标
//                root.setX(root.x + delta.x)
//                root.setY(root.y + delta.y)
            }

            if (!isDoubleClick && isFullScreen) {
//                root.showNormal();
            }
        }

        onDoubleClicked: {
            isDoubleClick = true
            if (!isFullScreen) {
//                root.showFullScreen()        //窗口最大化
                isFullScreen = true
            }
            else {
//                root.showNormal()        //窗口正常化
                isFullScreen = false
            }
        }
    }

    Image {
        id: left
        anchors.left: parent.left
        anchors.leftMargin: 20
//        anchors.top: parent.top
//        anchors.topMargin: 14
        anchors.verticalCenter: parent.verticalCenter
        width: 20
        height: 20
        source: "res/arrow-left.png"
    }

    Image {
        id: right
        anchors.left: left.right
        anchors.leftMargin: 8
//        anchors.top: parent.top
//        anchors.topMargin: 14
        anchors.verticalCenter: parent.verticalCenter
        width: 20
        height: 20
        source: "res/arrow-right.png"
    }

    TextField {
        id: input_id
        anchors.left: right.right
        anchors.leftMargin: 6
        placeholderText: qsTr("搜索音乐")
        height: 20
        width: 70
        anchors.verticalCenter: parent.verticalCenter
    }

    Image {
        id: listen_id
        anchors.left: input_id.right
        anchors.leftMargin: 8
//        anchors.top: parent.top
//        anchors.topMargin: 14
        anchors.verticalCenter: parent.verticalCenter
        width: 20
        height: 20
        source: "res/listen-icon.png"
    }

//    Text {
//        id: soundTxt
//        anchors.left: soundImg.right
//        anchors.leftMargin: 8
//        anchors.top: parent.top
//        anchors.topMargin: 14
//        text: qsTr("Sound System")
//        font.pixelSize: 20
//        font.weight: Font.Normal
//        color: "#FFFFFF"
//    }

//    Text {
//        id: settingTxt
//        anchors.right: helpTxt.left
//        anchors.rightMargin: 20
//        anchors.verticalCenter: parent.verticalCenter
//        text: qsTr("设置")
//        font.pixelSize: 15
//        font.weight: Font.Normal
//        color: "#FFFFFF"
//    }

//    Text {
//        id: helpTxt
//        anchors.right: logTxt.left
//        anchors.rightMargin: 20
//        anchors.verticalCenter: parent.verticalCenter
//        text: qsTr("帮助")
//        font.pixelSize: 15
//        font.weight: Font.Normal
//        color: "#FFFFFF"
//    }

//    Text {
//        id: logTxt
//        anchors.right: devModeTxt.left
//        anchors.rightMargin: 40
//        anchors.verticalCenter: parent.verticalCenter
//        text: qsTr("日志")
//        font.pixelSize: 15
//        font.weight: Font.Normal
//        color: "#FFFFFF"
//    }

//    Text {
//        id: devModeTxt
//        anchors.right: switchBtn.left
//        anchors.rightMargin: 12
//        anchors.verticalCenter: parent.verticalCenter
//        text: qsTr("开发模式")
//        font.pixelSize: 15
//        font.weight: Font.Normal
//        color: "#FFFFFF"
//    }


//    Button {
//        id:switchBtn
//        anchors.right: minBtn.left
//        anchors.rightMargin: 40
//        width: 24
//        height:parent.height
//        hoverEnabled : true;

//        background: Rectangle {
//            id: swichRect
//            color: "#333333"
//            anchors.right: switchBtn.right
//            height: parent.height
//            Image {
//                id: switchImg
//                anchors.verticalCenter: parent.verticalCenter
//                width: 24
//                height: 24
//                source: "/res/img/switch.png"
//            }

//            MouseArea {
//                anchors.fill: parent
//                cursorShape: Qt.PointingHandCursor // 当鼠标悬浮时变成手形指针

//                onClicked: {
//                    if (devModeTxt.text == "开发模式") {
//                        devModeTxt.text = qsTr("用户模式")
//                    }
//                    else {
//                        devModeTxt.text = qsTr("开发模式")
//                    }
//                }
//            }
//        }


//    }

//    Button {
//        id:closeBtn
//        anchors.right: mainTitle.right
//        anchors.rightMargin: 0
//        anchors.top: parent.top
//        anchors.topMargin: 0
//        width: 44
//        height:parent.height
//        hoverEnabled : true;

//        background: Rectangle {
//            id: closeRect
//            //                color: Qt.rgba(0,0,0,0);
//            color: closeBtn.hovered ? "#d81e06" : "#333333"
//            anchors.right: closeBtn.right
//            Image {
//                id: closeImg
//                anchors.right: parent.right
//                anchors.rightMargin: 10
//                anchors.top: parent.top
//                anchors.topMargin: 14
//                width: 24
//                height: 24
//                source: "/res/img/close.png"
//            }
//        }

//        onClicked: {
//            Qt.quit()
//        }
//    }

//    Button {
//        id:expandBtn
//        anchors.right: closeBtn.left
//        anchors.rightMargin: 0
//        anchors.top: parent.top
//        anchors.topMargin: 0
//        width: 44
//        height:parent.height
//        hoverEnabled : true;

//        background: Rectangle {
//            id: expandRect
//            anchors.right: expandBtn.right
//            color:  expandBtn.hovered ? "#808080" : "#333333"
//            Image {
//                id: expandImg
//                anchors.right: parent.right
//                anchors.rightMargin: 10
//                anchors.top: parent.top
//                anchors.topMargin: 14
//                width: 24
//                height: 24
//                source: isFullScreen ?  "res/img/expand.png" : "res/img/expand-ori.png"
//            }
//        }

//        onClicked: {
//            if (!isFullScreen) {
//                root.showFullScreen()        //窗口最大化
//                isFullScreen = true
//            }
//            else {
//                root.showNormal()        //窗口正常化
//                isFullScreen = false
//            }
//        }
//    }

//    Button {
//        id:minBtn
//        anchors.right: expandBtn.left
//        anchors.rightMargin: 0
//        anchors.top: parent.top
//        anchors.topMargin: 0
//        width: 44
//        height:parent.height
//        hoverEnabled : true;

//        background: Rectangle {
//            id: minRect
//            color: minBtn.hovered ? "#808080" : "#333333"
//            anchors.right: minBtn.right
//            //最小化窗口按钮
//            Image {
//                id: minImg
//                anchors.right: parent.right
//                anchors.rightMargin: 10
//                anchors.top: parent.top
//                anchors.topMargin: 14
//                width: 24
//                height: 24
//                source: "res/img/mini.png"
//            }
//        }

//        onClicked: {
//            root.showMinimized()        //窗口最小化
//        }
//    }
}
