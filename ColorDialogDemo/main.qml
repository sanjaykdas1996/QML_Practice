import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Dialogs
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ColorDialog Demo")

    Column {
        spacing: 20
        anchors.centerIn: parent

        Button {
            text: "Coose Clor"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                colorDialogId.open()

            }
        }

        Rectangle {
            id: containerRectId
            width: 200
            height: 200
            border.color: "black"
            border.width: 8
//            color: colorDialogId.selectedColor
            anchors.horizontalCenter: parent.horizontalCenter
        }

        ColorDialog {
            id: colorDialogId
            title: "Please Choose a Color"

            onAccepted: {
                console.log("User chose color : " + selectedColor)
                containerRectId.color = selectedColor
            }

            onSelectedColorChanged: {
                console.log("Current color changed")
            }

            onRejected: {
                console.log("User rejected dialog")
            }
        }
    }
}
