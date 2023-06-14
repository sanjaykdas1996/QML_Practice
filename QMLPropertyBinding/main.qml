import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: redRectId
        width: 50
        height: width * 1.5
        color: "red"
    }

    Rectangle {
        id: greenRectId
        width: 100
        height: 100
        color: "green"
        anchors.bottom: parent.bottom

        MouseArea {
            anchors.fill:parent

            onClicked: {
               redRectId.width = redRectId.width + 10
            }
        }
    }

    Rectangle {
        id: blueRectId
        width: 100
        height: 100
        color: "blue"
        anchors.bottom: parent.bottom
        anchors.left: greenRectId.right

        MouseArea {
            anchors.fill: parent

            onClicked: {
                redRectId.height = Qt.binding(function(){
                    return redRectId.width * 2;
                })
            }
        }
    }
}
