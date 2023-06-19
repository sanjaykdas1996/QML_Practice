import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Animation Intro Demo")
    property bool running: false

    Rectangle {
        id: containerRectId
        anchors.fill: parent
        color: "beige"

        Rectangle {
            id: containedRectId
            width:100
            height: 100
            x : 50
            y : 50
            color: "yellowgreen"
            PropertyAnimation on x{
                to: 530
                duration: 2000
                running: rootId.running
            }

            NumberAnimation on y {
                to: 350
                duration: 4000
                running: rootId.running
            }

            RotationAnimation on rotation {
                to: 360
                duration: 2000
                running: rootId.running
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                rootId.running = true
            }
            onReleased: {
                rootId.running = false
            }
        }
    }
}
