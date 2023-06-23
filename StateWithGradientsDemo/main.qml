import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("State with gradient demo")

    Rectangle {
        id: containerRectId
        anchors.fill: parent

        Rectangle {
            id: sky
            width: parent.width
            height: 200
//            color: "blue"
            gradient: Gradient {
                GradientStop{ id: skyStartColorId; position: 0.0; color: "blue" }
                GradientStop{ id: skyEndColorId; position: 1.0; color: "#66CCFF" }
            }
        }

        Rectangle {
            id: ground
            anchors.top: sky.bottom
            anchors.bottom: parent.bottom
            width: parent.width
//            color: "lime"
            gradient: Gradient {
                GradientStop{ id: groundStartColorId; position: 0.0; color: "lime" }
                GradientStop{ id: groundEndColorId; position: 1.0; color: "#66CCFF" }
            }
        }

        Image {
            id: spring
            x: 50
            y: 100
            width: 200
            height: 300
            source: "images/treespringsmall.png"
        }

        Image {
            id: summer
            x: 50
            y: 100
            width: 200
            height: 300
            source: "images/treesummersmall.png"
        }

        Rectangle {
            id: sun
            x: parent.width - width - 100
            y: 50
            width: 100
            height: 100
            color: "yellow"
            radius: 60
        }

//        state: "spring"
        //States
        states: [
            State {
                name: "summer"
//                PropertyChanges {
//                    target: sky
//                    color: "lightblue"
//                }
                PropertyChanges {
                    target: skyStartColorId
                    color: "lightblue"
                }
                PropertyChanges {
                    target: skyEndColorId
                    color: "#EECCFF"
                }

                PropertyChanges {
                    target: summer
                    opacity: 1
                }
                PropertyChanges {
                    target: spring
                    opacity: 0
                }
                PropertyChanges {
                    target: groundStartColorId
                    color: "darkkhaki"
                }
                PropertyChanges {
                    target: groundEndColorId
                    color: "lime"
                }
                PropertyChanges {
                    target: sun
                    color: "yellow"
                }
            },
            State {
                name: "spring"
//                PropertyChanges {
//                    target: sky
//                    color: "deepskyblue"
//                }
                PropertyChanges {
                    target: skyStartColorId
                    color: "#deepskyblue"
                }
                PropertyChanges {
                    target: skyEndColorId
                    color: "#AACCFF"
                }
                PropertyChanges {
                    target: spring
                    opacity: 1
                }
                PropertyChanges {
                    target: summer
                    opacity: 0
                }
                PropertyChanges {
                    target: groundStartColorId
                    color: "lime"
                }
                PropertyChanges {
                    target: groundEndColorId
                    color: "darkkhaki"
                }
                PropertyChanges {
                    target: sun
                    color: "lightyellow"
                }
            }
        ]

        //Transition
        transitions: Transition {
            from: "*"
            to: "*"

            ColorAnimation {
                duration: 500
            }

            NumberAnimation {
                properties: "opacity"
                duration: 500
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                containerRectId.state = (containerRectId.state ==="spring"?"summer":"spring")
            }
        }
    }
}
