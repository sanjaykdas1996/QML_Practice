import QtQuick 2.14

Item {
    id: rootId
    width: containerRectId.width
    height: containerRectId.height
    property alias buttonText: buttonTextId.text
    property alias buttonColor: containerRectId.color
    signal buttonClicked

    Rectangle {
        id: containerRectId
        width: buttonTextId.implicitWidth + 20
        height: buttonTextId.implicitHeight + 20
        color: "yellow"

        border{
            color: "blue"
            width: 3
        }

        Text {
            id: buttonTextId
//            text: "Button";
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
//                console.log("Clicked on : " + buttonTextId.text)
                rootId.buttonClicked()
            }
        }

    }
}

