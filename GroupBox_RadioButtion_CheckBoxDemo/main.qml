import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("GroupBox, RadioButton and CheckBox Demo")

    Column {
        spacing: 10
        anchors.fill: parent

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "A GroupBox wrapping around radioButtons"
        }

        GroupBox {
            title: "Choose bonus"
            anchors.horizontalCenter: parent.horizontalCenter

            Column {
                RadioButton {
                    text: "Cocke"

                    onCheckedChanged: {
                        if(checked)
                        {
                            console.log("Cock Button is checked")
                        }

                        else
                        {
                            console.log("Cocke Button is not checked")
                        }
                    }
                }
                RadioButton {
                    text: "Green Tea"
                }
                RadioButton {
                    text: "Ice Cream"
                }
            }
        }

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "A GroupBox wrapping around the CheckBox"
        }

        GroupBox {
            title: "Choose OS"
            anchors.horizontalCenter: parent.horizontalCenter
            Column
            {
                CheckBox {
                    text: "Windows"
                }
                CheckBox {
                    text: "Mac"
                }
                CheckBox {
                    text: "Linux"
                }
            }

        }
    }
}
