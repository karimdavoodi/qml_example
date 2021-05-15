import QtQuick 2.12

Rectangle {
    width: parent.width
    height: parent.height
    property alias backgroud_image: bgImage.source
    Image {
        id: bgImage
        anchors.fill: parent
        fillMode:  Image.Tile
    }
}

