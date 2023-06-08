import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Global Object Demo")
    property var fonts: Qt.fontFamilies()
    Rectangle {
        width: 200
        height: 100
        color: "green"
        anchors.centerIn: parent

        MouseArea{
            anchors.fill: parent
            onClicked: {

               //Quit the application
//                console.log("Quit the App")
//                Qt.quit()

                //List the available fonts
                for(var i=0; i < fonts.length; i++){
                    console.log("["+ i +"] :" + fonts[i])
                }

                //Hash a string
                var mName = "Sanjay Das"
                var mNameHash = Qt.md5(mName)
                console.log("The hash of the name is : " + mNameHash)

                //Open url externally
                Qt.openUrlExternally("http://www.blikoontech.com")

                //Open local files with default program
                Qt.openUrlExternally("file:///D:/shova mahato/photo/DSC_0619.JPG")

                //Capture platform info
                console.log("The current platform is : " + Qt.platform.os)
            }
        }
    }
}
