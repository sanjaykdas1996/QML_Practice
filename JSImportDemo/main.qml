import QtQuick 2.14
import QtQuick.Window 2.14

import"utilities1.js" as Utilities1

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 300
        height: 100
        color: "cyan"
        anchors.centerIn: parent

        Text {
            text: "Click Me!"
            anchors.centerIn: parent
        }

    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
//            Utilities1.greeting()

//            console.log("Our ages combined yield: " + Utilities1.combineAge())

            console.log("Difference between 100 and 25 is : " + Utilities1.subtract(100,25))
        }
    }
}
