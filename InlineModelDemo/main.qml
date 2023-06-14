import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListView{
        id: mListView
        anchors.fill: parent
        model: ["January","February","March","April","May","June","July","September","Octuber","November","December"]
        delegate: Rectangle {
            id: rectId
            width: parent.width
            height: 50
            color: "yellowgreen"
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
                }
            }
        }
    }
}
