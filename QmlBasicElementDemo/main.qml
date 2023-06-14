import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Basic Elements Demo")

    Item {
        id: containerItemId
        x: 50
        y: 50

        width: 400
        height: 300

        Rectangle {
            anchors.fill: parent
            color: "beige"
            border.color: "black"
        }

        Rectangle {
            x: 0
            y: 10

            width: 50
            height: 50
            color: "red"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }
        Rectangle {
            x: 60
            y: 10

            width: 50
            height: 50
            color: "green"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }
        Rectangle {
            x: 120
            y: 10

            width: 50
            height: 50
            color: "blue"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }
        Rectangle {
            x: 180
            y: 10

            width: 50
            height: 50
            color: "black"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Text {
            x:  100
            y: 100
            id: mTextId
            text: "Hello World!"
            font.family: "Helvetica"
            font.pointSize: 15
            color: "red"
        }

        Image {
            x : 10
            y : 150
            width: 100
            height: 100
            //loading image from the working directory
            source: "file:DSC_0619.JPG"
        }
        Image {
            x : 150
            y : 150
            width: 100
            height: 100
            //loading image from the resource file
            source: "image/sk.JPG"
        }
    }
}
