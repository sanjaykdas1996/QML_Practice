import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Keys Attached properties demo")

    Rectangle {
        id: containerRectId
        anchors.centerIn: parent
        width: 200
        height: 100
        color: "dodgerblue"
        focus: true


        Keys.onDigit1Pressed:  {
            console.log("Specific Signal : Pressed on key 1")
            event.accepted = false
        }

        Keys.onDigit2Pressed: {
            if(event.modifiers === Qt.ControlModifier)
            {
                console.log("Pressed Control + 2")
            }
            else
            {
                console.log("Pressed general 2")
            }
        }


        Keys.onPressed: {
            if(event.key === Qt.Key_1)
            {
                console.log("General Signal : Pressed on key 1")
            }

            if((event.key === Qt.Key_5) && (event.modifiers === Qt.AltModifier))
            {
                console.log("Pressed Alt + 5")
            }
        }
    }

}
