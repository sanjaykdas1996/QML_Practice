import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle   {
        width: 300
        height: 100
        color: "red"

        anchors.centerIn: parent

        Text {
            anchors.centerIn: parent
            id: textId
            text: "Click Me"


        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Hello there")
            }
        }
    }
}
