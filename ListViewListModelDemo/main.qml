import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListView {
        id: mListViewId
        anchors.fill: parent
        model: mModel
        delegate: Rectangle {
            id: rectId
            width: parent.width
            height: 50
            radius: 10
            color: "pink"
            border.color: "black"

            Text {
                id: textId
                anchors.centerIn: parent
                font.pointSize: 20
                text: name + " : " + address
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on : " + address + " : " + name)
                }
            }
        }
    }
    ListModel {
        id: mModel
        ListElement{
            name: "Sumit Yadav"
            address: "Chandranagar - 2"
        }

        ListElement {
            name: "Sushil Singh"
            address: "Sagardina"
        }

        ListElement {
            name: "Rupesh Singh"
            address: "Chandranagar - 7"
        }

        ListElement {
            name: "Bamdev Mahato"
            address: "Chandranagar - 1, Kishanpur"
        }

        ListElement {
            name: "Arun Yadav"
            address: "Samsi"
        }

        ListElement {
            name: "Satendra Jha"
            address: "Babargunj"
        }

        ListElement {
            name: "Muna"
            address: "Paradi"
        }

        ListElement {
            name: "Bijay Mahato"
            address: "Mohangunj"
        }

        ListElement {
            name: "Dilip Paswan"
            address: "Barantol"
        }
    }

   /* Component {
        id: delegateId
        Rectangle {
            id: rectId
            width: parent.width
            height: 50
            color: "yellow"
            border.color: "green"
            border.width: 1
            radius: 10

            Text {
                id: textId
                anchors.centerIn: parent
                font.pointSize: 20
                text: name + " : " + address
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on: " + address + " : " + name)
                }
            }
        }
    }
    */
}
