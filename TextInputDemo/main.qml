import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {
        x: 10; y:10;
        spacing: 10

        Rectangle {
            id: firstNameId
            width: firstNamelabelId.implicitWidth + 20
            height: firstNamelabelId.implicitHeight + 20
            color: "beige"

            Text {
                id: firstNamelabelId
                anchors.centerIn: parent
                text: "First Name :"
            }
        }

        Rectangle {
            id: firstNameTextRectId
            width: firstNameTextId.implicitWidth + 20
            height: firstNameTextId.implicitHeight + 20
            color: "beige"

            TextInput {
                id: firstNameTextId
                anchors.centerIn: parent
                focus: true
                text: "Type in your first name"

                onEditingFinished: {
                    console.log("The first name is edited : " + text)
                }

            }
        }
    }
    Row {
        x: 10; y: 60;
        spacing: 20

        Rectangle {
            id: lastNameRectId
            width: lastNameLableId.implicitWidth + 20
            height: lastNameLableId.implicitHeight + 20
            color: "beige"


            Text {
                id: lastNameLableId
                anchors.centerIn: parent
                text: "Last Name:"
            }
        }

        Rectangle {
            id: lastNameTextRectId
            width: lastNameTextId.implicitWidth + 20
            height: lastNameTextId.implicitHeight + 20
            color: "beige"

            TextInput {
                id: lastNameTextId
                anchors.centerIn: parent
                focus: true
                text: "Type in your last name"

                onEditingFinished: {
                    console.log("The last name id edited: " + text)
                }
            }
        }
    }
}
