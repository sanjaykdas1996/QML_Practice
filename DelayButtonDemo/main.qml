import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("DelayButton demo")

    Column {
        width:  parent.width
        spacing: 40


        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "Delay Button. Use it when you want to prevent accidental Clicks"
            font.pointSize: 15
        }

        DelayButton {
            property bool activated: false
            text: "DelayButton"
            anchors.horizontalCenter: parent.horizontalCenter
            delay: 1000

            onPressed: {
                if(activated === true)
                {
                    console.log("Button is Clicked")
                    activated = false
                }
            }

            onActivated:
            {
                console.log("Button is Activated")
                activated = true
            }

            onProgressChanged: {
                console.log(progress)
            }
        }
    }
}
