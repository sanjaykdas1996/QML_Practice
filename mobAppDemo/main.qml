import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Rectangle {
        anchors.centerIn: parent
        width: 300
        height: 100
        color: "yellowgreen"

        Text {
            anchors.centerIn: parent
            text: "click Me!"
            font.pixelSize: 30
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Hello there")
            }
        }
    }
}
