import QtQuick 2.14

Item {

    property alias rectColor: notifierRectId.color
    width: notifierRectId.width
    height: notifierRectId.height
    property int count: 0
    signal notify(string count) //declare signal
    property Receiver target: null

    onTargetChanged: {
        notify.connect(target.receiveInfo)
    }


    Rectangle {
        id: notifierRectId
        width:200
        height: 200
        color: "yellow"

        Text {
            id: notifierDisplayTextId
            anchors.centerIn: parent
            font.pointSize: 25
            text: count

        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                count++
                notify(count)
            }
        }
    }

}
