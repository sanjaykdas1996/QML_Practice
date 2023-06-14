import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TextArea Demo")

    Column {
        width: parent.width
        spacing: 20

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "TextArea is multi-line text editor."
        }

        ScrollView {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 600
            height: 150

            TextArea {
                id: textAreaId
                background: Rectangle{
                    color: "black"
                }

                color: "white"
                wrapMode: TextArea.Wrap
                placeholderText: "Type in your query"
//                text: "TextArea is not scrollable by itself. TextArea is not scrollable by itself.TextArea is not scrollable by itself. Especially on screen-size constrained platforms, it is often preferable to make entire application pages scrollable. On such a scrollable page, a non-scrollable TextArea might behave better than nested scrollable controls. Notice, however, that in such a scenario, the background decoration of the TextArea scrolls together with the rest of the scrollable content. Especially on screen-size constrained platforms, it is often preferable to make entire application pages scrollable. On such a scrollable page, a non-scrollable TextArea might behave better than nested scrollable controls. Notice, however, that in such a scenario, the background decoration of the TextArea scrolls together with the rest of the scrollable content.Especially on screen-size constrained platforms, it is often preferable to make entire application pages scrollable. On such a scrollable page, a non-scrollable TextArea might behave better than nested scrollable controls. Notice, however, that in such a scenario, the background decoration of the TextArea scrolls together with the rest of the scrollable content."
            }
        }
        Button {
            text: "Submit"
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                console.log("The text inside the TextArea is : " + textAreaId.text)

            }
        }
    }
}
