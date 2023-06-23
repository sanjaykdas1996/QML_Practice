import QtQuick 2.14
import QtQuick.Window 2.14
import QtCore
import QtQuick.Dialogs

Window {
    id: rootID
    width: 640
    height: 480
    visible: true
    title: qsTr("Settings Demo1")

    Rectangle {
        id: rectID
        anchors.fill: parent
        color: "yellowgreen"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                colorDialogId.open()
            }

            ColorDialog {
                id: colorDialogId
                title: "Please choose a color"
                onAccepted: {
                    console.log("The new color is " + selectedColor)
                    rectID.color = selectedColor
                }
                onRejected: {
                    console.log("Canceled")
                }
            }
        }
    }

    Settings{
        category: "windows"
        property alias x: rootID.x
        property alias y: rootID.y
        property alias width: rootID.width
        property alias height: rootID.height
    }
    Settings{
        category: "color"
        property alias color: rectID.color
    }
}
