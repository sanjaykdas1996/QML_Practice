import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Flow Demo")

    Flow {
        id: containerRectId
        width: parent.width
        height: parent.height

        flow:Flow.Center
        layoutDirection: Qt.RightToLeft

        spacing: 20

        Rectangle {
            id: rect1Id
            width: 100
            height: 100
            color: "yellowgreen"
            radius: 20

            Text {
                anchors.centerIn: parent
                text: "1"
                font.pixelSize: 40

            }
        }

        Rectangle {
            id: rect2Id
            width: 100
            height: 100
            color: "beige"
            radius: 20

            Text{
                anchors.centerIn: parent
                text: "2"
                font.pixelSize: 40
            }

        }

        Rectangle {
            id: rect3Id
            width: 100
            height: 100
            color: "yellow"
            radius: 20

            Text{
                anchors.centerIn: parent
                text: "3"
                font.pixelSize: 40
            }

        }

        Rectangle {
            id: rect4Id
            width: 100
            height: 100
            color: "dodgerblue"
            radius: 20

            Text{
                anchors.centerIn: parent
                text: "4"
                font.pixelSize: 40
            }

        }

        Rectangle {
            id: rect5Id
            width: 100
            height: 100
            color: "cyan"
            radius: 20

            Text{
                anchors.centerIn: parent
                text: "5"
                font.pixelSize: 40
            }

        }

        Rectangle {
            id: rect6Id
            width: 100
            height: 100
            color: "lightgray"
            radius: 20

            Text{
                anchors.centerIn: parent
                text: "6"
                font.pixelSize: 40
            }

        }

        Rectangle {
            id: rect7Id
            width: 100
            height: 100
            color: "ghostwhite"
            radius: 20

            Text{
                anchors.centerIn: parent
                text: "7"
                font.pixelSize: 40
            }

        }

        Rectangle {
            id: rect8Id
            width: 100
            height: 100
            color: "green"
            radius: 20

            Text{
                anchors.centerIn: parent
                text: "8"
                font.pixelSize: 40
            }

        }

        Rectangle {
            id: rect9Id
            width: 100
            height: 100
            color: "darkred"
            radius: 20

            Text{
                anchors.centerIn: parent
                text: "9"
                font.pixelSize: 40
            }

        }

        Rectangle {
            id: rect10Id
            width: 100
            height: 100
            color: "blue"
            radius: 20

            Text{
                anchors.centerIn: parent
                text: "10"
                font.pixelSize: 40
            }

        }

        Rectangle {
            id: rect11Id
            width: 100
            height: 100
            color: "whitesmoke"
            radius: 20

            Text{
                anchors.centerIn: parent
                text: "11"
                font.pixelSize: 40
            }

        }

        Rectangle {
            id: rect12Id
            width: 100
            height: 100
            color: "pink"
            radius: 20

            Text{
                anchors.centerIn: parent
                text: "12"
                font.pixelSize: 40
            }

        }

    }
}
