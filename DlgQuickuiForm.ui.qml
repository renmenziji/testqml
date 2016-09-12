import QtQuick 2.4

Item {
    id: item1
    width: 400
    height: 400
    LayoutItem:RowLayout


    Text {
        id: text1
        x: 73
        y: 53
        height: 14
        text: qsTr("Text")
        font.pixelSize: 12
    }

    TextInput {
        id: textInput1
        x: 56
        y: 92
        width: 226
        height: 55
        text: qsTr("Text Input")
        font.pixelSize: 12
    }
}
