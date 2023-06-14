import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TextField Demo")

    Column {
        spacing: 20
        anchors.centerIn: parent

        Row {
            spacing: 30
            width: 300

            Label {
                width: 100
                height: 50
                wrapMode: Label.Wrap
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter

                text: "First Name"
            }

            TextField {
                id: textFieldId
                width: 200
                height: 50
                placeholderText: "Type your First Name"

                onEditingFinished: {
                    console.log("Text Edit Finished: " + text)
                }
            }
        }

        Button {
            text: "Click"
            onClicked: {
                console.log("Text is: " + textFieldId.text)
            }
        }

    }
}
