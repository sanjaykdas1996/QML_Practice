import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Dynamic Models Demo")

    ListModel {
        id: mListModelId
        ListElement {
            firstName: "Sumit "; lastName: "Yadav"
        }
        ListElement {
            firstName: "Sushil "; lastName: "Singh"
        }
        ListElement {
            firstName: "Arun "; lastName: "Yadav"
        }
        ListElement {
            firstName: "Rupesh "; lastName: "Singh"
        }
        ListElement {
            firstName: "Bamdev "; lastName: "Mahato"
        }
        ListElement {
            firstName: "Dilip "; lastName: "Boat"
        }
        ListElement {
            firstName: "Ram Prabhesh "; lastName: "Mandal"
        }
    }

    ColumnLayout {
        anchors.fill: parent
        ListView {
            id: mListView
            model: mListModelId
            delegate: delegateId
            Layout.fillWidth: true
            Layout.fillHeight: true

        }
        Button {
            text:"Add Item"
            Layout.fillWidth: true

            onClicked: {
                mListModelId.append({"firstName" : "Ajay", "lastName" : "Das"})
            }
        }
        Button {
            text:"Clear"
            Layout.fillWidth: true

            onClicked: {
                mListModelId.clear()
            }
        }
        Button {
            text:"Delete Item at index 1"
            Layout.fillWidth: true

            onClicked: {
                if(1 < mListView.model.count) {
                     mListModelId.remove(1,1)
                }
                else {
                    console.log("index is invailid")
                }

            }
        }
        Button {
            text:"Set Item at index 2"
            Layout.fillWidth: true

            onClicked: {
                mListModelId.set(3,{"firstName" : "Sarwan", "lastName" : "Das"})
            }

        }

    }

    Component {
        id: delegateId
        Rectangle{
            width: parent.width
            height: 50
            color: "lightgreen"
            border.color: "whitesmoke"
            border.width: 2
            radius: 10

            Text {
                anchors.centerIn: parent
                font.pointSize: 20
                text: firstName + " " + lastName
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on : " + firstName + " " + lastName)
                }
            }
        }
    }
}
