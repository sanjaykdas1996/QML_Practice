import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.LocalStorage
import QtQuick.Dialogs
import "Database.js" as JS
Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("SQLite Demo")
    property var db

    Rectangle {
        id: containerRectId
        anchors.fill: parent
        color: "yellow"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                colorDialogId.open()
            }
        }
        ColorDialog {
            id: colorDialogId
            title: "Please coose color"
            onAccepted: {
                console.log("The new color is: " + selectedColor)
                containerRectId.color = selectedColor
            }
            onRejected: {
                console.log("Canceled")
            }
        }
    }
    Component.onCompleted: {
        JS.dbInit()
        JS.readData()
    }
    Component.onDestruction: {
        JS.storeData()
    }
}
