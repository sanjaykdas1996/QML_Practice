import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.3

Window {
    width: mLayoutId.implicitWidth
    height: mLayoutId.implicitHeight
    visible: true
    title: qsTr("Layout demo")

    GridLayout{
        id: mLayoutId
        anchors.fill: parent
        columns: 3
        rows: 3

        Rectangle {
            id: topLeftRectId
            width: 80
            height: width
            color: "yellowgreen"

//            Layout.fillWidth: true
//            Layout.fillHeight: true

            Layout.alignment: Qt.AlignCenter

        }

        Rectangle {
            id: topCenterRectId
            width: 100
            height: 100
            color: "dodgerblue"

            Layout.fillWidth: true
            Layout.fillHeight: true

            Layout.columnSpan: 2


        }

//        Rectangle {
//            id: topRightRectId
//            width: 100
//            height: width
//            color: "yellow"

//            Layout.fillWidth: true
//            Layout.fillHeight: true

//        }

        Rectangle {
            id: centerLeftRectId
            width: 100
            height: 100
            color: "red"

            Layout.fillWidth: true
            Layout.fillHeight: true

            Layout.rowSpan: 2


        }

        Rectangle {
            id: centerCentertRectId
            width: 100
            height: width
            color: "darkblue"

            Layout.fillWidth: true
            Layout.fillHeight: true

        }

        Rectangle {
            id: centerRightRectId
            width: 100
            height: width
            color: "darkgreen"

            Layout.fillWidth: true
            Layout.fillHeight: true

        }

//        Rectangle {
//            id: bottomLeftRectId
//            width: 100
//            height: width
//            color: "beige"

//            Layout.fillWidth: true
//            Layout.fillHeight: true

//        }

        Rectangle {
            id: bottomCenterRectId
            width: 100
            height: width
            color: "dodgerblue"

            Layout.fillWidth: true
            Layout.fillHeight: true

        }

        Rectangle {
            id: bottomRightRectID
            width: 100
            height: width
            color: "yellow"

            Layout.fillWidth: true
            Layout.fillHeight: true

        }
    }

}
