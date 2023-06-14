import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Page and TabBar Demo")

    Page {
        id: pageId
        anchors.fill: parent

        header: Label {
            text: "Page and TabBar Demo"
            horizontalAlignment: Text.AlignHCenter
        }

        SwipeView
        {
            id: swipViweId
            anchors.fill: parent
            currentIndex: tabBarId.currentIndex

            Image {
                id: firstImageId
                source: "poster/poster1.jpg"
            }

            Image {
                id: secondImageId
                source: "poster/poster2.jpg"
            }

            Image {
                id: thirdImageId
                source: "poster/poster3.jpg"
            }



        }

        footer: TabBar{
            id: tabBarId
            currentIndex: swipViweId.currentIndex

            TabButton {
                text: "First"
            }

            TabButton {
                text: "Second"
            }

            TabButton {
                text: "Third"
            }

        }
    }
}
