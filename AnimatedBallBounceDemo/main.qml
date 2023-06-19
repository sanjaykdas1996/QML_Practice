import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Animated ball bounce demo")
    property int animationDuration: 1000

    Rectangle {
        id: sky
        width: parent.width
        height: 200
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#0080FF"}
            GradientStop { position: 1.0; color: "#66CCFF" }
        }
    }
    Rectangle {
          id: ground
          anchors.top: sky.bottom
          anchors.bottom: parent.bottom
          width: parent.width
          gradient: Gradient {
              GradientStop { position: 0.0; color: "#00FF00" }
              GradientStop { position: 1.0; color: "#00803F" }
          }
    }
    Image {
        id: ball
        width: 150
        height: 150
        x: 0; y: root.height - height
        source: "images/soccer_ball.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                ball.x = 0
                ball.y = root.height - ball.height
                ball.rotation = 0;
                animationId.restart()

            }
        }

    }
    ParallelAnimation{
        id: animationId
        SequentialAnimation {
            NumberAnimation {
                target: ball
                properties: "y"
                to: 20
                duration: animationDuration * 0.4
                easing.type: Easing.OutCirc
            }

            NumberAnimation {
                target: ball
                properties: "y"
                to: 300
                duration: animationDuration * 0.6
                easing.type: Easing.OutBounce
            }
        }

        NumberAnimation {
            target: ball
            property: "x"
            to: 400
            duration: animationDuration
        }
        RotationAnimation {
            target: ball
            properties: "rotation"
            to: 1000
            duration: animationDuration
        }
    }


}
