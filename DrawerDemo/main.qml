import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: rootId
    width: 360
    height: 520
    visible: true
    title: qsTr("Drawer Demo")

    header: ToolBar {
        height: 50
        background: Rectangle {
            color: "mintcream"
        }

        RowLayout {
            spacing: 20
            anchors.fill: parent

            ToolButton {
                background: Rectangle {
                    color: "mintcream"
                }

                icon.source: "image/drawer.png"

                onClicked: {
                    console.log("ToolButton is clicked")
                    drawerId.open()
                }
            }

            Label {
                id: titleLabelId
                text: "Drawer Demo"
                font.pixelSize: 20
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
        }
    }
    Drawer {
        id: drawerId
        width: Math.min(rootId.width, rootId.height) * (2/3)
        height: rootId.height
        interactive: true

        ColumnLayout {
//            spacing: 20
            width: parent.width

            Button {
                width: parent.width
                height: 50
                text: "Item 1"
                font.pointSize: 20
                background: Rectangle{
                    color: "beige"
                }
                Layout.fillWidth: true

                onClicked:{
                    console.log("Clicked on " + text)
                    contentRectId.color = "beige"
                    drawerId.close()
                }
            }

            Button {
                width: parent.width
                height: 50
                text: "Item 2"
                font.pointSize: 20
                background: Rectangle {
                    color: "lightblue"
                }
                Layout.fillWidth: true

                onClicked: {
                    console.log("Clicked on " + text)
                    contentRectId.color = "lightblue"
                    drawerId.close()
                }

            }

            Button {
                width: parent.width
                height: 50
                text: "Item 3"
                font.pointSize: 20
                background: Rectangle {
                    color: "lightgreen"
                }
                Layout.fillWidth: true

                onClicked: {
                    console.log("Clicked on " + text)
                    contentRectId.color = "lightgreen"
                    drawerId.close()
                }

            }
        }
    }

    Rectangle {
        id: contentRectId
        anchors.fill: parent
        color: "lightsteelblue"
    }
}
