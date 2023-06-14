import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        width: parent.width
        spacing: 20

        Dial{
            id: dialId
            from: 1
            to: 100
            value: 20
            anchors.horizontalCenter: parent.horizontalCenter

            onValueChanged: {
                progressBarId.value = value
            }
        }
        ProgressBar{
            id: progressBarId
            from: 1
            to: 100
            value: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Button {
            text: "Start"
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                progressBarId.value = 50
            }
        }

        ProgressBar{
          indeterminate: true
          anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
