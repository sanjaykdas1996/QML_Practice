import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signal And Slot Demo")

    property int increment: 50

    Rectangle {
        id: rectangleId
        width: 200 + increment
        height: 100
        color: "green"


        signal greet(string message) //Declaration of signal
        onGreet: {
            console.log("onGreet : greet signal emited")
        }

        onWidthChanged: {

        }

        function myGreeting(mMessege){
            console.log("myGreeting slot called. The parent is : " + mMessege)
            increment += 50
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                rectangleId.greet("Hello there") //Fire the signal
            }
        }
        Component.onCompleted: {
            rectangleId.greet.connect(rectangleId.myGreeting)
        }
    }
}
