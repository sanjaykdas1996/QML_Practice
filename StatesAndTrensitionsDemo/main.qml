import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("State and Transition Demo")

    Rectangle {
        id: containerRectId
        anchors.fill: parent

        Rectangle {
            id: sky
            width: parent.width
            height: 200
            color: "blue"
        }

        Rectangle {
            id: ground
            width: parent.width
            anchors.top: sky.bottom
            anchors.bottom: parent.bottom
            color: "lime"
        }
        Image {
            id: treeSpringId
            x: 50
            y: 100
            width: 200
            height: 300
            source: "images/treespringsmall.png"
        }
        Image {
            id: treeSummerId
            x: 50
            y: 100
            width: 200
            height: 300
            source: "images/treesummersmall.png"
        }
        Rectangle {
            id: sunId
            x: parent.width - width - 100
            y: 50
            width: 100
            height: 100
            color:"yellow"
            radius: 60
        }

       /* transitions: [
            Transition {
                from: "spring"
                to: "summer"

                ColorAnimation {
                    duration: 500
                }

                NumberAnimation {
                    property: "opacity"
                    duration: 500
                }

            },
            Transition {
                from: "summer"
                to: "spring"
                ColorAnimation {
                    duration: 500
                }
                NumberAnimation {
                    property: "opacity"
                    duration: 500
                }
            }

        ]*/

        states: [

            State {
                name: "spring"
                PropertyChanges {
                    target: sky
                    color: "deepskyblue"
                }
                PropertyChanges {
                    target: treeSummerId
                    opacity: 0
                }
                PropertyChanges {
                    target: treeSpringId
                    opacity: 1
                }
                PropertyChanges {
                    target: ground
                    color: "lime"
                }
                PropertyChanges {
                    target: sunId
                    color: "lightyellow"
                }
            },
            State {
                name: "summer"
                PropertyChanges {
                    target: sky
                    color: "lightblue"
                }
                PropertyChanges {
                    target: treeSummerId
                    opacity: 1
                }
                PropertyChanges {
                    target: treeSpringId
                    opacity: 0
                }
                PropertyChanges {
                    target: ground
                    color: "darkkhaki"
                }
                PropertyChanges {
                    target: sunId
                    color: "orange"
                }
            }
        ]

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
                containerRectId.state = (containerRectId.state === "spring"?"summer":"spring")
            }
        }

    }


}
