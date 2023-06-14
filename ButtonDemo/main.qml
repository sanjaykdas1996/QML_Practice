import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Button Demo")

    RowLayout {
        anchors.left: parent.left
        anchors.right: parent.right

        Button {
            id: button1
            text: "Button1"
            Layout.fillWidth: true

            onClicked: {
                console.log("Clicked on Button1")
            }

            onDoubleClicked: {
                console.log("Double clicked on Button1")
            }

        }

        Button {
            id: button2
            text: "Button2"
            Layout.fillWidth: true

            onClicked: {
                console.log ("Clicked on Button2")
            }
        }

        Button {
            id: button3
            text: "Button3"
            Layout.fillWidth: true

            onClicked: {
                console.log("Clicked on Button3")
            }
        }
    }
}
