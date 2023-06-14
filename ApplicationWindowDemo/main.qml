import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("ApplicationWindow Demo")

    menuBar: MenuBar {
        Menu {
            title: "&File"
            Action {
                id: newActionId
                text: qsTr("&New")
                icon.source: "images/newFileIcon.png"
                onTriggered: {
                    console.log("Clicked on new")
                }
            }

            Action {
                id: openActionId
                text: qsTr("&Open...")
                icon.source: "images/openIcon.png"
            }

            Action {
                id: saveActionId
                text: qsTr("&Save...")
                icon.source: "images/saveIcon.png"
            }

            Action {
                id: saveAsActionId
                text: qsTr("&Save As...")
                icon.source: ("images/saveAsIcon.png")
            }

//            Action {
//                id: infoActionId
//                text: qsTr("&Help...")
//                icon.source: ("images/infoIcon.png")
//            }
            MenuSeparator{}
            Action {
                id: quitAction
                text: qsTr("Quit")
                icon.source: "images/quitIcon.png"
                onTriggered: Qt.quit()
            }
        }
        Menu {
            title: qsTr("&Edit")
            Action{
                id: cutActionId
                text: qsTr("Cut")
                icon.source: "images/cutIcon.png"
            }

            Action{
                id: copyActionId
                text: qsTr("&Copy")
                icon.source: "images/copyIcon.png"
            }

            Action{
                id: pasteActionId
                text: qsTr("&Paste")
                icon.source: "images/pasteIcon.png"
            }

            MenuSeparator{}

            Action {
                id: undoActionId
                text: qsTr("&Undo")
                icon.source: "images/undoIcon.png"
            }

            Action {
                id: redoActionId
                text: qsTr("&Redo")
                icon.source: "images/redoIcon.png"
            }
        }

        Menu {
            title: qsTr("&Help")
            Action {
                id: aboutMenuId
                text: qsTr("&About")
                icon.source: "images/infoIcon.png"
            }
        }
    }

    header: ToolBar{
        Row {
            anchors.fill: parent
            ToolButton{
                action: newActionId
            }

            ToolButton {
                action: openActionId
            }

            ToolButton {
                action: saveAsActionId
            }

            ToolButton {
                action: saveActionId
            }

            ToolButton {
                action: quitAction
            }
        }

    }


    footer: TabBar {
        // ...
        id : mTabBar
        width: parent.width

        TabButton {
            text : qsTr("Page1")
            onClicked: {
                mStackId.pop()
                mStackId.push("qrc:/Page1.qml")
                console.log("Number of items : " + mStackId.depth)
            }
        }
        TabButton {
            text : qsTr("Page2")
            onClicked: {
                mStackId.pop()
                mStackId.push("qrc:/Page2.qml")
                console.log("Number of items : " + mStackId.depth)
            }
        }
        TabButton {
            text : qsTr("Page3")
            onClicked: {
                mStackId.pop()
                mStackId.push("qrc:/Page3.qml")
                console.log("Number of items : " + mStackId.depth)
            }
        }

        TabButton {
            text : qsTr("Page4")
            onClicked: {
                mStackId.pop()
                mStackId.push("qrc:/Page4.qml")
                console.log("Number of items : " + mStackId.depth)
            }
        }
    }

    StackView {
        id : mStackId
        anchors.fill: parent
        initialItem: Page1{

        }
    }
}
