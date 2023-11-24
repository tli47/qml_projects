import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    flags: Qt.Window | Qt.FramelessWindowHint //去标题栏
    //flags: Qt.CustomizeWindowHint | Qt.WindowCloseButtonHint //去标题栏

    Row {
        anchors.fill: parent
        NavBar {

        }

    }

}
