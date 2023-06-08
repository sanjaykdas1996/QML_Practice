import QtQuick 2.14

FocusScope {
    width: containerrectId.width
    height: containerrectId.height
    property alias rectColor: containerrectId.color

    Rectangle{
        id: containerrectId
        width:250
        height: 50
        color: "beige"
        focus: true

        Text{
            id:textId
            anchors.centerIn: parent
            text: "Default"
        }

        Keys.onPressed: {
            if(event.key === Qt.Key_1)
            {
                textId.text = "Pressed on Key 1"
            }

            else if(event.key === Qt.Key_2)
            {
                textId.text = "pressed on Key 2"
            }

            else
            {
                textId.text = "Pressed on another Key : " + event.key
            }
        }
    }
}


