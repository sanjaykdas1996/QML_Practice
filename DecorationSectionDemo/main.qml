import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Section Demo (Decoration)")

    ListModel {
        id: mListModel

        ListElement {
            name: "Hritik"
            company: "TCMI"
        }

        ListElement {
            name: "Arya"
            company: "TCMI"
        }

        ListElement {
            name: "Ajay"
            company: "Google"
        }

        ListElement {
            name: "Rupesh"
            company: "Google"
        }

        ListElement {
            name: "Arun"
            company: "Google"
        }

        ListElement {
            name: "Sumit"
            company: "Monarch"
        }

        ListElement {
            name: "Sushil"
            company: "Monarch"
        }



        ListElement {
            name: "Sanjay"
            company: "Monarch"
        }

        ListElement {
            name: "Dilip"
            company: "Microsoft"
        }

        ListElement {
            name: "Satendra"
            company: "Microsoft"
        }

    }


    ListView {
        id: mListViewId
        anchors.fill: parent
        model: mListModel
        delegate: delegateId

        section {
            property: "company"
            criteria: ViewSection.FullString
            delegate: Rectangle{
                width: parent.width
                height:50
                color: "blue"
                border.color: "white"
                border.width: 2
                radius: 12

                Text {
                    id: sectionTextId
                    text: section
                    anchors.centerIn: parent
                    font.pointSize: 20

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            console.log("Clicked on : " + section)
                        }
                    }
                }
            }
        }
    }

    Component {
        id: delegateId

        Rectangle {
            id: rectangleId
            width: parent.width
            height: 50
            color: "yellowgreen"
            border.color: "white"
            border.width: 2
            radius: 12

            Text {
                id: textId
                anchors.centerIn: parent
                font.pointSize: 20
                text: name + " : " + company
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on : " + name)
                }
            }
        }
    }
}
