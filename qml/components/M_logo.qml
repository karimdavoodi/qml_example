import QtQuick 2.12

Rectangle {
    id: logo
    width: height
    color: "transparent"
    anchors.top: parent.top
    anchors.margins: 10
    property alias uri: logo_image.source
    property alias size: logo.height

    Image {
        id: logo_image
        width: parent.width
        fillMode: Image.PreserveAspectFit
    }
}
