import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        anchors.centerIn: parent
        MButton {
//            focus: true

        }

        MButton{
            rectColor: "green"
            focus: true
        }
    }


}
