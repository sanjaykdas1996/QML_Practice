import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button {
        text: "Push Me"
        onClicked: messageDialog.open()
    }

    MessageDialog {
        id: messageDialog
        title:  "May I have your attention please"
        text: "It's so cool that you are using Qt Quick."
        buttons: MessageDialog.Ok | MessageDialog.Cancel

        onAccepted: {
            console.log("And of course you could only agree.")
        }

        onRejected: {
            console.log("You rejected the dialog")
        }
    }
}
