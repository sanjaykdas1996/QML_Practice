import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Positioning Demo")

    Rectangle {
        id: containerRectId
        width: 400
        height: width
        border.color: "black"

        anchors.centerIn: parent

        Grid {
            width: parent.width
//            horizontalItemAlignment: Grid.AlignRight
//            verticalItemAlignment: Grid.AlignRight

//            LayoutMirroring.enabled: true
//            LayoutMirroring.childrenInherit: true

            columns: 3

            Rectangle {
                width: parent.width / 3
                height: width
                color: "pink"

                Image {
                    anchors.centerIn: parent
                    width:parent.width
                    height: width
//                   source: "file:///C:/Users/acer/Downloads/DSC_0621.jpg"
                    source: "qrc:/image/photo2.jpg"

                 }
            }

            Rectangle {
                width: parent.width / 3
                height: width
                color: "green"
            }

            Rectangle {
                width: parent.width / 3
                height: width
                color: "blue"
            }

            Rectangle {
                width: parent.width / 3
                height: width
                color: "lightblue"
            }

            Rectangle {
                width: parent.width / 3
                height: width
                color: "whitesmoke"
            }

            Rectangle {
                width: parent.width / 3
                height: width
                color: "yellow"
            }

            Rectangle {
                width: parent.width / 3
                height: width
                color: "ghostwhite"
            }

            Rectangle {
                width: parent.width / 3
                height: width
                color: "darkred"
            }

            Rectangle {
                width: parent.width / 3
                height: width
                color: "orange"
            }
        }
    }
}
