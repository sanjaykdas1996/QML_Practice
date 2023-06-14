import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function min(a,b) {
        return Math.min(a,b)
    }

    Rectangle {
        id: mRectId
        width: min(500,400)
        height: 250
        anchors.centerIn: parent
        color: "green"
    }

    MouseArea {
        id: mMouseAreaId
        anchors.fill: parent

        function sayMessage()
        {
            console.log("Hello there")
        }

        onClicked: {
            sayMessage()
        }
    }

    Component.onCompleted: {
        console.log("The minimum widht is : " +min(600,500))
        mMouseAreaId.sayMessage()
    }


}
