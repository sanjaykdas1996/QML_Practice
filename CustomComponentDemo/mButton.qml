import QtQuick 2.14
Rectangle {
    width: buttonTextId.implicitWidth + 20
    height: buttonTextId.implicitHeight + 20
    color: "yellow"
    border { color: "blue"; width: 3}

    Text {
        id: buttonTextId
        text: "Button"
        anchors.centerIn: parent
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.log("Clicked ON :"+buttonTextId.text)
        }
    }
}
