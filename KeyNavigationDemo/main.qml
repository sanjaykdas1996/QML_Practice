import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {

        anchors.centerIn: parent
        Rectangle {
            id: firstRectId
            width: 200
            height: width
            color: "dodgerblue"
            border.color: "black"
            border.width: 2

//            color: focus? "gray" : "dodgerblue"
            focus: true

            onFocusChanged: {
                if(focus === true)
                {
                    color = "gray"
                }
                else
                {
                    color = "dodgerblue"
                }
            }


            Keys.onDigit5Pressed: {
                console.log("I am Rect 1")
            }
            KeyNavigation.right: secondRectId
        }

        Rectangle {
            id: secondRectId
            width: 200
            height: width
            color: "green"
            border.color: "black"
            border.width: 2

//            color: focus?"gray" : "green"
            onFocusChanged: {
                if(focus === true)
                {
                    color = "gray"
                }
                else
                {
                    color = "green"
                }
            }
            focus: true


            Keys.onDigit5Pressed: {
                console.log("I an Rect 2")
            }
            KeyNavigation.left: firstRectId
        }
    }


}
