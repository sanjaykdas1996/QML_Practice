import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("FontDialog Demo")

    Column {
        spacing: 20
        anchors.centerIn: parent

        Button {
            text: "Change Font"
            anchors.horizontalCenter: horizontalCenter
            onClicked: fontDialogId.open()
        }

        Text {
            id: textId
            text: qsTr("Hello World")
        }

        FontDialog {
            id: fontDialogId
            title: "Choose Font"

            onAccepted: {
                console.log("Choose font : " + currentFont)
                textId.font = currentFont
            }
        }
    }
}
