import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColumnLayout{
        width: parent.width
//        height: parent.height

        BusyIndicator{
            id: busyIndicatorId
            Layout.alignment: Qt.AlignHCenter
            running: false
            visible: false


        }


        ColumnLayout {
            Button {
                id: button1
                text: "Running"
                Layout.fillWidth: true

                onClicked: {
                    busyIndicatorId.running = true
                    busyIndicatorId.visible = true
                }

            }
            Button {
                id: button2
                text: "Not Running"
                Layout.fillWidth: true

                onClicked: {
                    busyIndicatorId.running = false
                    busyIndicatorId.visible = false
                }

            }
        }

        /*Item {
            Layout.fillHeight: true
            Layout.fillWidth: true
        }*/
    }



}
