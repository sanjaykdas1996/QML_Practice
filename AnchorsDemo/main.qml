import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: containerRectId
        width: 400
        height: width
        anchors.centerIn: parent
        border{
            color: "black"; width: 2
        }

        Rectangle {
            id: topLeftRectId
            width: parent.width / 3
            height: width
            color: "red"

        }

        Rectangle {
            id: topCenterRectId
            width: parent.width / 3
            height: width
            color: "green"

            anchors.left: topLeftRectId.right

        }

        Rectangle {
            id: topRightRectId
            width: parent.width / 3
            height: width
            color: "cyan"

            anchors.left:topCenterRectId.right

        }

        Rectangle {
            id: centerLeftRectId
            width: parent.width / 3
            height: width
            color: "dodgerblue"

            anchors.top: topLeftRectId.bottom

        }

        Rectangle {
            id: centerCenterRectId
            width: parent.width / 3
            height: width
            color: "yellow"

//            anchors.left: topLeftRectId.right
//            anchors.top: topLeftRectId.bottom

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

//            anchors.topMargin: 10

//            anchors.bottomMargin: 10

            anchors.horizontalCenterOffset: 10


        }

        Rectangle {

            id: centerRightRectId
            width: parent.width / 3
            height: width
            color: "yellowgreen"

            anchors.left: topCenterRectId.right
            anchors.top: topCenterRectId.bottom

        }

        Rectangle {

            id: bottomLeftRectId
            width: parent.width / 3
            height: width
            color: "black"

            anchors.right: centerCenterRectId.left
            anchors.top: centerCenterRectId.bottom

        }

        Rectangle {

            id: bottomCenterRectId
            width: parent.width / 3
            height: width
            color: "gray"

            anchors.right: centerRightRectId.left
            anchors.top: centerRightRectId.bottom

        }

        Rectangle {
            id: bottomRightID
            width: parent.width / 3
            height: width
            color: "whitesmoke"


            anchors.left: centerCenterRectId.right
            anchors.top: centerCenterRectId.bottom
        }

        Rectangle {
            id: siblingRect
            width: 300
            height: width
            color: "lightpink"
            anchors.right:  containerRectId.left
        }
    }
}
