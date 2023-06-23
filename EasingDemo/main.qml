import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts
Window {
    id:  rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Easing Demo")
    property int animationDuration: 500

    Flickable {
        anchors.fill: parent
        contentHeight: mColumnId.implicitHeight

        ColumnLayout {
            id: mColumnId
            width: parent.width
            spacing: 2

            MovingRectangle {
                backgroundColor: "gray"
                startColor: "orange"
                endColor: "green"
                easingText: "Linear"
                easingType: Easing.Linear
                animDuration: animationDuration
                containerWidth: rootId.width
            }
            MovingRectangle {
                backgroundColor: "gray"
                startColor: "black"
                endColor: "red"
                easingText: "InQuad"
                easingType: Easing.InQuad
                animDuration: animationDuration
                containerWidth: rootId.width
            }
            MovingRectangle {
                backgroundColor: "gray"
                startColor: "blue"
                endColor: "yellow"
                easingText: "OutQuad"
                easingType: Easing.OutQuad
                animDuration: animationDuration
                containerWidth: rootId.width
            }
            MovingRectangle {
                backgroundColor: "gray"
                startColor: "pink"
                endColor: "beige"
                easingText: "InOutQuad"
                easingType: Easing.InOutQuad
                animDuration: animationDuration
                containerWidth: rootId.width
            }
            MovingRectangle {
                backgroundColor: "gray"
                startColor: "whitesmoke"
                endColor: "yellowgreen"
                easingText: "InOutQuad"
                easingType: Easing.OutInQuad
                animDuration: animationDuration
                containerWidth: rootId.width
            }
            MovingRectangle {
                backgroundColor: "gray"
                startColor: "darkred"
                endColor: "lightgray"
                easingText: "OutInBack"
                easingType: Easing.OutInBack
                animDuration: animationDuration
                containerWidth: rootId.width
            }
            MovingRectangle {
                backgroundColor: "gray"
                startColor: "skyblue"
                endColor: "darkblue"
                easingText: "InBack"
                easingType: Easing.InBack
                animDuration: animationDuration
                containerWidth: rootId.width
            }
            MovingRectangle {
                backgroundColor: "gray"
                startColor: "darkred"
                endColor: "lightgray"
                easingText: "OutBack"
                easingType: Easing.OutBack
                animDuration: animationDuration
                containerWidth: rootId.width
            }
            MovingRectangle {
                backgroundColor: "gray"
                startColor: "lightyellow"
                endColor: "orange"
                easingText: "OutInBack"
                easingType: Easing.OutInBack
                animDuration: animationDuration
                containerWidth: rootId.width
            }
            MovingRectangle {
                backgroundColor: "gray"
                startColor: "orange"
                endColor: "ghostwhit"
                easingText: "InBounce"
                easingType: Easing.InBounce
                animDuration: animationDuration
                containerWidth: rootId.width
            }
            MovingRectangle {
                backgroundColor: "gray"
                startColor: "orange"
                endColor: "blue"
                easingText: "OutBounce"
                easingType: Easing.OutBounce
                animDuration: animationDuration
                containerWidth: rootId.width
            }
            MovingRectangle {
                backgroundColor: "gray"
                startColor: "orange"
                endColor: "red"
                easingText: "InOutBounce"
                easingType: Easing.InOutBounce
                animDuration: animationDuration
                containerWidth: rootId.width
            }
            MovingRectangle {
                backgroundColor: "gray"
                startColor: "orange"
                endColor: "yellow"
                easingText: "Bezier"
                easingType: Easing.Bezier
                animDuration: animationDuration
                containerWidth: rootId.width
            }

        }
    }
}
