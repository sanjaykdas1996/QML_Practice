import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Stand Alone Animation Demo")

    Rectangle {
        id: containerRectId
        anchors.fill: parent
        color: "whitesmoke"

        Rectangle {
            id: containedRectId
            width: 100
            height: 100
            color: "lightblue"
            x : 50; y : 50

            NumberAnimation {
                id: mXanimationId
                target: containedRectId
                property: "x"
                duration: 2000
                to: 540
            }

            RotationAnimation {
                id: mRotationAnimatioId
                target: containedRectId
                property: "rotation"
                duration: 2000
                to: 5000
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                mXanimationId.start()
                mRotationAnimatioId.start()
            }
            onReleased: {
                mXanimationId.stop()
                mRotationAnimatioId.stop()
            }
        }
    }
}
