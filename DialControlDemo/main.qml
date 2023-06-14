import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Dial Demo")

    Column {
        width: parent.width
        spacing: 20

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "A know used to let the user choose a value from arange"
            font.pointSize: 15
        }

        Dial {
            anchors.horizontalCenter: parent.horizontalCenter
            from: 1
            to: 100
            value: 20
            wrap: true

            onValueChanged: {
               console.log("Current : " + value)

            }

        }
        /*Rectangle {
            id: valueContainerId
            anchors.horizontalCenter: parent.horizontalCenter
            width: 100
            height: 50
            color: "green"

            Text {
                anchors.centerIn: parent
                id: textId
                text: ""
            }

        }*/
    }
}
