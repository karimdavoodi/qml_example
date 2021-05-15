import QtQuick 2.12

Rectangle {
    id: m_button_id
    anchors.horizontalCenter: parent.horizontalCenter
    color: "transparent"
    property string image_up
    property string image_down
    property alias label_text: b_text.text
    property alias label_color: b_text.color
    property alias image_bg: b_image.source
    property var on_click

    Item { // Try to smooth edges with cut of backgroud image!
        id: b_image
        anchors.fill: parent
        property string source: parent.image_up

        Image {
            id: middle_part
            source: b_image.source
            anchors.fill: parent
            fillMode:  Image.Stretch
        }
        Item {
            id: left_side
            width: parent.width / 10
            height: parent.height
            clip: true
            Image {
                source: b_image.source
                height: parent.height
                width: parent.width * 2
            }
        }
        Item {
            id: right_side
            anchors.right: parent.right
            width: parent.width / 10
            height: parent.height
            clip: true
            Image {
                source: b_image.source
                height: parent.height
                width: parent.width * 2
                anchors.right: parent.right
            }
        }
    }

    Text {
            id: b_text
            padding: 10
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 23
            fontSizeMode: Text.Fit
            anchors.fill: parent
    }
    states: [  // State of button on press and release
            State {
                name: "Hovering"
                PropertyChanges {
                    target: b_image
                    source: parent.image_up
                }
            },
            State {
                name: "Pressed"
                PropertyChanges {
                    target: b_image
                    source: parent.image_down
                }
            }
        ]
    MouseArea {
        id: m_button_event
        hoverEnabled: true
        anchors.fill: parent
        onClicked: parent.on_click()
        onReleased: { parent.state="Hovering" }
        onPressed: {  parent.state="Pressed" }
    }
}
