import QtQuick 2.14
import QtQuick.Window 2.14
import QtCore

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Settings Demo2")

    Rectangle {
        id: containerRectId
        anchors.fill: parent

        Rectangle {
            id: skyId
            width: parent.width
            height: 200

            gradient: Gradient{
                GradientStop{ id: skyStartColorId; position: 0.0; color: "blue" }
                GradientStop{ id: skyEndColorId; position: 1.0; color: "#66CCFF" }
            }
        }
        Rectangle {
            id: groundId
            anchors.top: skyId.bottom
            anchors.bottom: parent.bottom
            width: parent.width

            gradient: Gradient{
                GradientStop{ id: groundStartColorId; position: 0.0; color: "lime" }
                GradientStop{ id: groundEndColorId; position: 1.0; color: "#66CCFF" }
            }
        }
        Image {
            id: springImageId
            x: 60
            y: 100
            width: 200
            height: 300
            source: "images/treespringsmall.png"
        }
        Image {
            id: summerImageId
            x: 60
            y: 100
            width: 200
            height: 300
            source: "images/treesummersmall.png"
        }
        Rectangle {
            id: sunID
            x: parent.width - width - 90
            y: 50
            width: 100
            height: 100
            radius: 60
            color: "yellow"
        }
        state: settingID.state

        states: [
            State {
                name: "summer"
                PropertyChanges {
                    target: skyStartColorId
                    color: "lightblue"
                }
                PropertyChanges {
                    target: skyEndColorId
                    color: "#EECCFF"
                }

                PropertyChanges {
                    target: summerImageId
                    opacity: 1
                }
                PropertyChanges {
                    target: springImageId
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
                    target: sunID
                    color: "yellow"
                }
            },
            State {
                name: "spring"
                PropertyChanges {
                    target: skyStartColorId
                    color: "deepskyblue"
                }
                PropertyChanges {
                    target: skyEndColorId
                    color: "#AACCFF"
                }
                PropertyChanges {
                    target: springImageId
                    opacity: 1
                }
                PropertyChanges {
                    target: summerImageId
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
                    target: sunID
                    color: "lightyellow"
                }
            }
        ]

        transitions:Transition {
                from: "*"
                to: "*"
                ColorAnimation {
                    duration: 500
                }

                NumberAnimation {
                    property: "opacity"
                    duration: 500
                }
            }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                containerRectId.state = (containerRectId.state === "spring"?"summer":"spring")

            }
        }
    }
    Settings {
        id: settingID
        property string state: "spring"
    }
    Component.onDestruction: {
        settingID.state = containerRectId.state
    }
}
