import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("GridView Demo")

    ListModel {
        id: mListModelId
        ListElement {
            mNumber: "1"
            mColor: "red"
        }
        ListElement {
            mNumber: "2"
            mColor: "silver"
        }
        ListElement {
            mNumber: "3"
            mColor: "magenta"
        }
        ListElement {
            mNumber: "4"
            mColor: "lightblue"
        }
        ListElement {
            mNumber: "5"
            mColor: "yellowgreen"
        }
        ListElement {
            mNumber: "6"
            mColor: "skyblue"
        }
        ListElement {
            mNumber: "7"
            mColor: "cyan"
        }
        ListElement {
            mNumber: "8"
            mColor: "whitesmoke"
        }
        ListElement {
            mNumber: "9"
            mColor: "lightpink"
        }
        ListElement {
            mNumber: "10"
            mColor: "dodgerblue"
        }
    }

    GridView {
        id: mGridViewId
        anchors.fill: parent
        flow: GridView.FlowTopToBottom
        layoutDirection: Qt.RightToLeft
        model: mListModelId
        delegate: Rectangle {
            width: 100
            height: width
            color: mColor


            Text {
                text: mNumber
                anchors.centerIn: parent
                font.pointSize: 20

            }
        }
    }
}
