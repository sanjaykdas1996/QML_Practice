import QtQuick 2.14

Item {
    property var backgroundColor
    property var startColor
    property var endColor
//    property var easingText
    property string easingText
    property int animDuration
    property var easingType
    property int containerWidth

    width: smallCotainerRectId1.width
    height: smallCotainerRectId1.height
    property int finalX: smallCotainerRectId1.width - containedRectId1.width

    Rectangle {
        id: smallCotainerRectId1
        width: containerWidth
        height: 50
        color: backgroundColor

        Text {
            text: easingText
            anchors.centerIn: parent
        }

        Rectangle {
            id: containedRectId1
            color: startColor
            width: 50
            height: 50
            border{width: 5; color: "black"}
            radius: 10

            MouseArea {
                anchors.fill: parent

                property bool toRight : false
                onClicked: {
                    if(toRight === false)
                    {
                        //Move to right
                        toRight = true

                        //Animate X
                        mNumberAnimationId.to = finalX
                        mNumberAnimationId.start()

                        //Animate color
                        mColorAnimationId.from = startColor
                        mColorAnimationId.to = endColor
                        mColorAnimationId.start()
                    }
                    else
                    {
                        //Move to left
                        toRight = false

                        //Animate X
                        mNumberAnimationId.to = 0
                        mNumberAnimationId.start()

                        //Animate color
                        mColorAnimationId.from = endColor
                        mColorAnimationId.to = startColor
                        mColorAnimationId.start()
                    }
                }
            }
        }
        NumberAnimation {
            id: mNumberAnimationId
            target: containedRectId1
            property: "x"
            easing.type: easingType
            to: finalX
            duration: animDuration

        }


        ColorAnimation {
            id: mColorAnimationId
            target: containedRectId1
            property: "color"
            from: startColor
            to: endColor
            duration: animDuration
        }

        Component.onCompleted: {
            console.log("The width of the contained rect is : " + parent.width)
        }
    }

}
