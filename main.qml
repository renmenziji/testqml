import QtQuick 2.2
import QtQuick.Controls 1.1
import CPlusPlus.Test 1.0

ApplicationWindow
{
    visible: true
    width: 640
    height: 480
    title: qsTr("测试QML于C++的交互")

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
                    x: 5
                    width: 80
                    height: 40

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
      }

    }
}

