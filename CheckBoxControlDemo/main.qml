import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("CheckBox demo")

    function mCheck( )
    {
            if(checkBox1.checked && checkBox2.checked)
            {
                checkBox3.enabled = false

            }

            else if(checkBox1.checked && checkBox3.checked)
            {
                checkBox2.enabled = false
            }

            else if(checkBox2.checked && checkBox3.checked)
            {
                checkBox1.enabled = false
            }

            else {
                checkBox3.enabled = true
                checkBox1.enabled = true
                checkBox2.enabled = true
            }

    }

    ColumnLayout {
        id: containerId
        spacing: 10
        anchors.centerIn: parent



        CheckBox {
            id: checkBox1
            text: "CheckBox 1"
            Layout.fillWidth: parent.width
            onCheckedChanged: {

                mCheck()
            }
        }

        CheckBox {
            id: checkBox2
            text: "CheckBox 2"
            Layout.fillWidth: parent.width
            onCheckedChanged: {
                mCheck()
            }
        }

        CheckBox {
            id: checkBox3
            text: "CheckBox 3"
            Layout.fillWidth: parent.width
            onCheckedChanged: {
                mCheck()
            }
        }
    }

}
