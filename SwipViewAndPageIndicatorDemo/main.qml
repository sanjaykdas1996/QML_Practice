import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4
import QtQuick.Dialogs

Window {
    width: 300
    height: 480
    visible: true
    title: qsTr("PageIndicat And SwipView demo")

    SwipeView {
        id: swipVIewId
        anchors.fill: parent
        currentIndex: pageIndicatorId.currentIndex

        Image {
            id: image1
            source: "image/photo2.jpg"
        }
        Image {
            id: image2
            source: "image/san1.JPG"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: image3
            source: "image/san2.jpg"
        }
        Image {
            id: image4
            source: "image/san3.jpg"
        }
    }

    PageIndicator {
        id: pageIndicatorId
        anchors.bottom: swipVIewId.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        //PageIndicator specific propeties properties
        currentIndex: swipVIewId.currentIndex
        interactive: true
        count: swipVIewId.count

    }
}
