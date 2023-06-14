import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Syntex Demo")

    property string textToShow: ""

    Row{
        id: row1
        anchors.centerIn: parent
        spacing: 20

        Rectangle{
            id: greenRectID
            width: 150; height: 150;
            color: "green"
            radius: 20
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    console.log("Clicked on the green rectangle")
                    textToShow = "Green"
                }
            }
        }

        Rectangle{
          id: redRectID
          width: 150; height: 150;
          color:  "red"
          radius: 20
          MouseArea{
              anchors.fill: parent
              onClicked:{
                  console.log("Clicked on the red rectangle")
                  textToShow = "Red"
              }
          }
        }
        Rectangle{
          id: blueRectID
          width: 150; height: 150;
          color:  "blue"
          radius: 20
          MouseArea{
              anchors.fill: parent
              onClicked:{
                  console.log("Clicked on the blue rectangle")
                  //textToShow = "Blue"
                  textId.text = "Blue"
              }
          }
        }
        Rectangle{
            id: textRectId
            width: 150; height:150;
            color: "dodgerblue"
            radius:  100
            Text{
                id:textId
                anchors.centerIn: parent
                text: textToShow

            }
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    console.log("Clicked on Text area rectangle")
                }
            }

        }
    }
}
