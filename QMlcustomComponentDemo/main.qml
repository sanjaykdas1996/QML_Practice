import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Column {
        spacing: 5
        BBtn {
            buttonColor: "red"
            buttonText: "Button1"

            onButtonClicked: {
                console.log("Clicked Button 1 from main file")
            }

        }

        BBtn{
            buttonText: "Button2"

            onButtonClicked: {
                console.log("Clicked Button 2 from main file")
            }
        }
    }

}
