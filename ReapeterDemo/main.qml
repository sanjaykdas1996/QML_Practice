import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Repeater Demo")

    Flickable {
        contentHeight: columnId.implicitHeight
        anchors.fill: parent

        Column {
            id: columnId
            anchors.fill: parent
            spacing: 2

            Repeater {
                model: 10
                delegate: Rectangle {
                    width: parent.width
                    height: 50
                    color: "dodgerblue"

                    Text {
                        anchors.centerIn: parent
                        text: modelData
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            console.log("Clicked on: " + modelData)
                        }
                    }
                }
            }
        }
    }
}
