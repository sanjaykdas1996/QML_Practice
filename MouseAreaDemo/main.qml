import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("MouseArea Demo")

    Rectangle {
        id:containerRectId
        width: parent.width
        height: 200
        color: "beige"

        Rectangle {
            id: movingRectId
            width: 100
            height: 50
            color: "green"
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log(mouse.x)
                movingRectId.x = mouse.x
            }

            onWheel: {
                console.log(" X :" + wheel.x + " y : " + wheel.x + "angleDalta : " + wheel.angleDelta)
            }

            hoverEnabled: true
            onHoveredChanged: {
                if(containsMouse === true)
                {
                    containerRectId.color ="yellow"
                }
                else
                {
                    containerRectId.color = "red"
                }
            }
        }
    }

    Rectangle {
        id: dragContainerId
        width: parent.width
        height: 200
        color: "beige"
        y: 250


        Rectangle{
            id: draggableRectId
            width: 50
            height: width
            radius: 100
            color: "grey"

            MouseArea {
                anchors.fill: parent
                drag.target: draggableRectId
                drag.axis: Drag.XAndYAxis
                drag.minimumX: 0
                drag.maximumX: dragContainerId.width - draggableRectId.width
                drag.minimumY: 0
                drag.maximumY: dragContainerId.width - draggableRectId.width
            }
        }


    }
}
