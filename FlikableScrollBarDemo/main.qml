import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Flickable {
        width: parent.width
        height: parent.height
        contentHeight: mColumnId.implicitHeight


        Column {
            id: mColumnId
            anchors.fill: parent

            Rectangle {
                color:  "Black"
                width: parent.width
                height: 200

                Text{
                    anchors.centerIn: parent
                    text: "Element 1"
                    font.pointSize: 30
                    color: "White"
                }
            }

            Rectangle {
                color:  "white"
                width: parent.width
                height: 200

                Text{
                    anchors.centerIn: parent
                    text: "Element 2"
                    font.pointSize: 30
                    color: "black"
                }
            }

            Rectangle {
                color:  "darkgreen"
                width: parent.width
                height: 200

                Text{
                    anchors.centerIn: parent
                    text: "Element 3"
                    font.pointSize: 30
                    color: "White"
                }
            }
            Rectangle {
                color:  "gray"
                width: parent.width
                height: 200

                Text{
                    anchors.centerIn: parent
                    text: "Element 4"
                    font.pointSize: 30
                    color: "White"
                }
            }
            Rectangle {
                color:  "blue"
                width: parent.width
                height: 200

                Text{
                    anchors.centerIn: parent
                    text: "Element 5"
                    font.pointSize: 30
                    color: "White"
                }
            }

            Rectangle {
                color:  "purple"
                width: parent.width
                height: 200

                Text{
                    anchors.centerIn: parent
                    text: "Element 6"
                    font.pointSize: 30
                    color: "White"
                }
            }
        }
        ScrollBar.vertical: ScrollBar{}

    }
}
