import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string mFirstName: "Sumit"
    onMFirstNameChanged: {
        console.log("The firstname is changed to : " + mFirstName)
    }

    Rectangle {
        width: 300;
        height: 200
        color: "greenyellow"
        anchors.centerIn: parent

        MouseArea{
            anchors.fill: parent
            onClicked: {
                mFirstName = "Sumit Yadav"
            }
        }
    }
    Component.onCompleted: {
        console.log("The firstname is : " + mFirstName)
    }
}
