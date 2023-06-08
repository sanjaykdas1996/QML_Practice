import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("External component with signal and slot")

    Notifier {
        id: notifierId
        rectColor: "green"
        target: recieverId


    }

    Receiver{
        id: recieverId
        anchors.right: parent.right
        rectColor: "yellow"

    }

//    Component.onCompleted: {
//       notifierId.notify.connect(recieverId.receiveInfo)
//    }
}
