import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Frame Demo")

    Frame {
        anchors.centerIn: parent

        ColumnLayout {
            Button{
                text: "Button1"
            }

            Button{
                text: "Button2"
            }

            Button{
                text: "Button2"
            }
        }
    }
}
