import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls
import QtQuick.Layouts
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    readonly property int buttonWidth: 300

    Column {
        spacing: 40
        width: parent.width

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: qsTr("Dialog is a popup that is mostly used for short - term tasks "
                       + "and brief communication with the user."   )
        }

        Button {
            text: qsTr("Message")
            anchors.horizontalCenter: parent.horizontalCenter
            width:buttonWidth
            onClicked: messageDialog.open()

            Dialog {
                id: messageDialog
                x: (parent.width - width)/2
                y: (parent.height - height)/2

                title: qsTr("Message")

                Label {
                    text: qsTr("Lorem ipsum dolor sit amet...")
                }
            }
        }

        Button {
            id: button
            text: qsTr("Confirmation")
            anchors.horizontalCenter: parent.horizontalCenter
            width: buttonWidth
            onClicked: conformationDialogId.open()

            Dialog
            {
                id: conformationDialogId

                x: (parent.width - width)/2
                y: (parent.height - height)/2
                parent: Overlay.overlay

                modal: true
                title: qsTr("Confirmation")
                standardButtons: Dialog.Yes | Dialog.No

                Column {
                    spacing: 20
                    anchors.fill: parent

                    Label {
                        text: qsTr("The document has been modified. \nDo you want to save your changes")
                    }

                    CheckBox {
                        text: qsTr("Do not ask again")
                        anchors.right: parent.right
                    }
                }
            }
        }

        Button {
            text: qsTr("Content")
            anchors.horizontalCenter: parent.horizontalCenter
            width: buttonWidth
            onClicked: contentDialog.open()

            Dialog {
                id: contentDialog

                x: (parent.width - width)/2
                y: (parent.height - height)/2
                width: parent.width
                contentHeight: logo.height*2
                parent: Overlay.overlay

                modal: true
                title: qsTr("Content")
                standardButtons: Dialog.Close

                Flickable {
                    id: flickable
                    clip: true
                    anchors.fill: parent
                    contentHeight: Column.height

                    Column {
                        id: column
                        spacing: 20
                        width: parent.width

                        Image {
                            id: logo
                            width: parent.width /2
                            anchors.horizontalCenter: parent.horizontalCenter
                            fillMode: Image.PreserveAspectFit
                            source: "image/QtLogo.png"
                        }

                        Label {
                            width: parent.width
                            text: qsTr("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc finibus "
                                       + "in est quis laoreet. Interdum et malesuada fames ac ante ipsum primis "
                                       + "in faucibus. Curabitur eget justo sollicitudin enim faucibus bibendum. "
                                       + "Suspendisse potenti. Vestibulum cursus consequat mauris id sollicitudin. "
                                       + "Duis facilisis hendrerit consectetur. Curabitur sapien tortor, efficitur "
                                       + "id auctor nec, efficitur et nisl. Ut venenatis eros in nunc placerat, "
                                       + "eu aliquam enim suscipit.")
                            wrapMode: Label.Wrap
                        }
                    }
                    ScrollIndicator.vertical: ScrollIndicator
                    {
                        parent: contentDialog.contentItem
                        anchors.top: flickable.top
                        anchors.bottom: flickable.bottom
                        anchors.right: parent.right
                        anchors.rightMargin: - contentDialog.rightPadding + 1
                    }
                }
            }
        }

        Button {
            text: qsTr("Input")
            anchors.horizontalCenter: parent.horizontalCenter
            width: buttonWidth
            onClicked: inputDialog.open()

            Dialog {
                id: inputDialog
                x: (parent.width - width)/2
                y: (parent.height - height)/2
                parent: Overlay.overlay

                focus: true
                modal: true
                title: qsTr("Input")
                standardButtons: Dialog.Ok | Dialog.Cancel

                ColumnLayout {
                    spacing: 20
                    anchors.fill: parent
                    Label {
                        elide: Label.ElideRight
                        text: qsTr("Please Enter the credentials: ")
                        Layout.fillWidth: true
                    }

                    TextField {
                        placeholderText: qsTr("Pasword")
                        echoMode: TextField.PasswordEchoOnEdit
                        Layout.fillWidth: true
                    }
                }
            }
        }


    }
}
