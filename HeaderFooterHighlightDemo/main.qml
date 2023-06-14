import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Header Footer and Highlight Demo")

    ListView{
        id: mListViewId
        anchors.fill: parent
        header: headerId
        footer: footerId

        highlight: Rectangle {
            width: parent.width
            color: "gray"
            border.color: "white"
            radius: 14
            z: 2
            opacity: 0.5
        }

        model: ["January","February","March","April","May","June","July","Augst","September","Octuber","November","December"]
        delegate: Rectangle {
            id: rectId
            width: parent.width
            height: 50
            color: "lightgreen"
            border.color: "blue"
            radius: 10

            Text {
                id: textId
                anchors.centerIn: parent
                font.pointSize: 20
                text: modelData
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on : " + modelData)
                    mListViewId.currentIndex = index
                }
            }
        }
    }

    Component {
        id: headerId
        Rectangle {
            id: rectangle1Id
            width: parent.width
            height: 50
            color: "yellow"
            border.color: red
            radius: 10

            Text {
                anchors.centerIn: parent
                font.pointSize: 25
                text: "Month"
            }
        }
    }

    Component {
        id: footerId
        Rectangle{
            width: parent.width
            height: 50
            color: "red"
            border.color: "black"
            radius: 10

            Text {
                anchors.centerIn: parent
                font.pointSize: 25
                text: "Footer"
            }
        }
    }
}
