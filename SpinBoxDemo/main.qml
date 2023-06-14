import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("SpinBox Demo")

    Column {
        spacing:  20
        width: parent.width

        SpinBox {
            id: spinBoxId
            from: 0
            to: 100
            value: 20
            stepSize: 5
            editable: true

            anchors.horizontalCenter: parent.horizontalCenter

            onValueChanged: {
                console.log("Current value is : " + value)
            }

        }
    }


}
