import QtQuick 2.2
import QtQuick.Controls 1.1
import CPlusPlus.Test 1.0
import QtWebView 1.1
ApplicationWindow
{
    visible: true
    width: 640
    height: 480
    title: qsTr("测试QML于C++的交互")


    Keys.enabled: true
    Keys.onPressed:{
        radioButton1.name = event.key-Qt.Key_0;
        console.log( "[qml] Rating is: " + item0.name );
    }



    menuBar: MenuBar
    {
        Menu
        {
            title: qsTr("文件")
            MenuItem
            {
                text: qsTr("退出")
                onTriggered: Qt.quit( );
            }
        }
    }

    Text
    {
        text: qsTr("本例用来测试QML和C++的交互")
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }

    CPlusPlusType
    {
        id: theType
    }



    MouseArea
    {
        id: mouseArea1
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        onClicked:
        {
            console.log( "[qml] Rating is: " + theType.rating );
            theType.method( );
        }

        Row {

            id: row2
            x: 71
            y: 15
            width: 200
            height: 400
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top:  parent.top
            anchors.bottom: parent.bottom
            Button {
                id: button1
                x: 108
                y: 62
                text: qsTr("Button")
                anchors.right: parent.right
                anchors.rightMargin: 457
            }

            ComboBox {
                id: comboBox1
                x: 104
                y: 95
            }

            RadioButton {
                id: radioButton1
                x: 104
                y: 39
                text: qsTr("Radio Button")
            }

            ProgressBar {
                id: progressBar1
                x: 64
                y: 121
            }

            ToolButton {
                id: toolButton1
                x: 397
                y: 39
            }





            Component {
                id: highlight
                Rectangle {
                    width: 180; height: 40
                    color: "lightsteelblue"; radius: 5
                    y: listView1.currentItem.y
                    Behavior on y {
                        SpringAnimation {
                            spring: 3
                            damping: 0.2
                        }
                    }
                }
            }
            ListView {
                id: listView1
                y: 168
                height: 240
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                highlight: highlight
                highlightFollowsCurrentItem: true
                //  focus: true
                flickableDirection: Flickable.AutoFlickDirection
                model: ListModel {
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }

                    ListElement {
                        name: "Red"
                        colorCode: "red"
                    }

                    ListElement {
                        name: "Blue"
                        colorCode: "blue"
                    }

                    ListElement {
                        name: "Green"
                        colorCode: "green"
                    }
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }

                    ListElement {
                        name: "Red"
                        colorCode: "red"
                    }

                    ListElement {
                        name: "Blue"
                        colorCode: "blue"
                    }

                    ListElement {
                        name: "Green"
                        colorCode: "green"
                    }
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }

                    ListElement {
                        name: "Red"
                        colorCode: "red"
                    }

                    ListElement {
                        name: "Blue"
                        colorCode: "blue"
                    }

                    ListElement {
                        name: "Green"
                        colorCode: "green"
                    }
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }

                    ListElement {
                        name: "Red"
                        colorCode: "red"
                    }

                    ListElement {
                        name: "Blue"
                        colorCode: "blue"
                    }

                    ListElement {
                        name: "Green"
                        colorCode: "green"
                    }
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }

                    ListElement {
                        name: "Red"
                        colorCode: "red"
                    }

                    ListElement {
                        name: "Blue"
                        colorCode: "blue"
                    }

                    ListElement {
                        name: "Green"
                        colorCode: "green"
                    }
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }

                    ListElement {
                        name: "Red"
                        colorCode: "red"
                    }

                    ListElement {
                        name: "Blue"
                        colorCode: "blue"
                    }

                    ListElement {
                        name: "Green"
                        colorCode: "green"
                    }
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }

                    ListElement {
                        name: "Red"
                        colorCode: "red"
                    }

                    ListElement {
                        name: "Blue"
                        colorCode: "blue"
                    }

                    ListElement {
                        name: "Green"
                        colorCode: "green"
                    }
                }

                delegate: Item
                {
                id:item0
                    x: 5
                    width: 80
                    height: 40
                    Keys.enabled:true

                    Keys.onPressed:{
                        radioButton1.name = event.key-Qt.Key_0;
                        console.log( "[qml] Rating is: " + item0.name );
                    }

                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked: myRect.state =="clicked" ? myRect.state="" : myRect.state="clicked";

                        Row
                        {
                            id: row1
                            Image
                            {
                                width: 40
                                height: 40
                                source: "qrc:///"+colorCode+".png"
                            }

                            Text
                            {
                                id:myRect
                                text: name
                                font.bold: true
                                anchors.verticalCenter: parent.verticalCenter
                                states:[
                                    State{
                                        name:"clicked"
                                        PropertyChanges{ target: myRect; color:"red"}
                                    }
                                ]
                            }
                            spacing: 10


                        }
                    }
            }
        }
        Text {
            id: text1
            x: 101
            y: 0
            width:100
            height:100
           // anchors.fill: parent
            opacity: 0.3

            baseUrl: "http://qt-project.org/index.html"
        }

        WebView {
            id: text1
            x: 101
            y: 0
            width:100
            height:100
           // anchors.fill: parent
            opacity: 0.3

            baseUrl: "http://qt-project.org/index.html"
        }
            Image {
                id: image1
                x: 0
                y: 0
                width:100
                height:100
                fillMode: Image.PreserveAspectFit
               // anchors.fill: parent
                opacity: 0.3

                source: "http://upload-images.jianshu.io/upload_images/1378637-e7b46354b363bba6.jpg"
            }
      }

    }
}

