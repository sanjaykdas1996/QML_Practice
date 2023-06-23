import QtQuick 2.14
import QtQuick.Window 2.14
import QtQml.XmlListModel

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("XmlListModel Demo")


    XmlListModel {
        id: mXmlListModelId
        source: "qrc:///xml/employee.xml"
        query: "/courses/course"

        XmlListModelRole {name: "instructor" ; elementName: "instructor"}
        XmlListModelRole {name: "coursename" ; elementName: "coursename"}
        XmlListModelRole {name: "year" ; elementName: "year"}
        XmlListModelRole {name: "hot" ; attributeName: "hot"}

        onStatusChanged: {
            var pre = "XmlListModel"
            if(status === XmlListModel.Ready) print(pre + "Ready - count", count);
            if(status === XmlListModel.Loading) print(pre + "Loading...");
            if(status === XmlListModel.Error) print(pre + "Error: ", errorString());
            if(status === XmlListModel.Null) print(pre + "Null")
        }

    }
    ListView {
        id: mListViewId
        anchors.fill: parent
        model: mXmlListModelId
        delegate: Rectangle {
            width: parent.width
            height: 50
            color: "whitesmoke"
            border.color: "black"
            radius: 10

            Row {
                spacing: 30
                Text {
                    text: instructor
                    font.pointSize: 15
                }
                Text {
                    text: coursename + " (" + year +")"
                    font.bold: hot === "true"?true:false
                    font.pointSize: 15
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on " + hot)
                }
            }
        }
    }
}
