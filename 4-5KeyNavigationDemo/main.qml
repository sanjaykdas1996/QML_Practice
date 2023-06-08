import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("KeyNavigation Demo")

    Grid {
        anchors.centerIn:parent
        width: parent.width
        height: parent.height
        columns: 2

        Rectangle {
            id: topLftId
            width: (parent.width)/2
            height: (parent.height)/2
            color: focus?"lightgray" : "red"
            focus: true

            KeyNavigation.right: topRightId
            KeyNavigation.down: bottomLeftId

        }

        Rectangle{
            id: topRightId
            width: (parent.width)/2
            height: (parent.height)/2
            color: focus? "lightgray" : "green"


           KeyNavigation.left: topLftId
           KeyNavigation.down: bottomRightID
        }

        Rectangle {
            id:bottomLeftId
            width: (parent.width)/2
            height: (parent.height)/2
            color: focus? "Lightgray" : "yellowgreen"

            KeyNavigation.right: bottomRightID
            KeyNavigation.up: topLftId


        }

        Rectangle {
            id: bottomRightID
            width: (parent.width)/2
            height: (parent.height)/2
            color: focus? "Lightgray" : "pink"

            KeyNavigation.left: bottomLeftId
            KeyNavigation.up: topRightId

        }

    }
}
