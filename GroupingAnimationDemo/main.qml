import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Grouping animation Demo")
    property int animationDuration: 1000

    Rectangle {
        anchors.fill: parent
        color: "gray"

        Rectangle {
            id: circleId
            width:100
            height: 100
            radius: 70
            color:"lightgreen"
        }

//        SequentialAnimation
        ParallelAnimation {
            id: groupAnimationId

            //Animate on x
            NumberAnimation {
                target: circleId
                property: "x"
                to: rootId.width - circleId.width
                from: 0
                duration: animationDuration

            }

            //Animate on y
            NumberAnimation {
                target: circleId
                property: "y"
                to: rootId.height - circleId.height
                from: 0
//                easing.type: Easing.OutBounce
//                easing.amplitude: 3
                duration: animationDuration
            }
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                //Rset the values : x and y
                circleId.x = 0
                circleId.y = 0

                //Animate
                groupAnimationId.start()

            }
        }
    }
}
