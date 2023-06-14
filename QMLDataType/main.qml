import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Data type Demo")

    property string mString: "http://www.mrsksir.github.io"
    property int mInt: 20
    property bool isMale: false
    property url mUrl: "http://www.mrsksir.github.io"

    property var aNumber: 100
    property var aBool: false
    property var aString: "Hello World!"
    property var anotherString: String("#FF000567")
    property var aColor: Qt.rgba(0.2,0.3,0.4,0.5)
    property var aRect: Qt.rect(10,20,30,40)
    property var aPoint: Qt.point(10,20)
    property var aSize: Qt.size(10,20)
    property var aVector3d: Qt.vector3d(100,100,100)
    property var anArray: [1, 2, 3, "four", "five",(function(){return "six"})]
    property var anObject: { "foo": 10, "bar": 20}
    property var aFunction: (function() { return "one" })

    property var aFont: Qt.font({family: "Consolas", pointSize: 20, bold: true})


    Rectangle {
        width: 150; height: 100;
        color: aColor
        anchors.centerIn: parent

        Text {
            id: textID
            anchors.centerIn: parent
            text: mString
//            font.bold: isMale ? true : false
            font: aFont
        }
    }

    Component.onCompleted: {
//        console.log("The value of mString is: " + mString)
        print("The value of mString is: " + mString)
        console.log("The vlue of mInt is: " + mInt)
        if(isMale) {
           console.log("He wear suit")
        }
        else {
            console.log("She wear dress")
        }
        console.log("The value of mUrl is: " + mUrl)
        if(mString === mUrl)
        {
            console.log("Both are same")
        }
        else {
            console.log("Both are not same")
        }

        console.log("-------------Playing with var data type--------")

        console.log("The value of aNumber is: " + aNumber)
        console.log("The value of aBoo is: " + aBool)
        console.log("The value of aString is: " + aString)
        console.log("The value of aString is: " + anotherString)

        console.log ("The component of aRect are : X :" + aRect.x
                     + " Y :" + aRect.y + " width : " + aRect.width + " height " + aRect.height)

        console.log("The length of the array is : " + anArray.length)

        anArray.forEach(function(value, index){
            if(index === 5)
            console.log(value())

            else
                console.log(value)
        })

        console.log("The vaue of aFunction : " + aFunction())
    }
}
