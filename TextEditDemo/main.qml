import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TextEdit Demo")

    Flickable {
        id:mFlickableId
        width: textInputId.width
        contentHeight: textInputId.implicitHeight
        height: 300
        clip: true

        anchors.centerIn: parent


        TextEdit {
            id: textInputId
            width: 240

            text:"<strong>Because</strong> we want to use our server locally, we set "+
                 "our domain name \r to be <font color = 'red'> localhost </font>. if we had set it up " +
                 "the host files to resolve whatever we put in here to " +
                 "a recognizable network address." +
                 "ustleaveinlocalhostitisgoogenoughforour localusepurposes." +
                 "leave the rest to defaults and hit continue. You are then" +
                 "giving a choice for the database you want to use"

            wrapMode: TextEdit.Wrap

            textFormat: TextEdit.RichText
            font.family: "Helvetica"
            font.pointSize: 20
            color: "blue"
            focus: true

            onEditingFinished: {
                console.log("The current text is: " + text)
            }
        }
    }

    Rectangle {
        id: mRectId
        width: 150
        height: 100
        color: "yellowgreen"

        anchors.top: mFlickableId.bottom

        MouseArea {
            anchors.fill: parent
            onClicked: {
                mRectId.focus = true
            }
        }
    }


}
