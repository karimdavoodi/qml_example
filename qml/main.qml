import QtQuick 2.12
import QtQuick.Window 2.12

// C++ object file read text file
import Text_read 1.0

// Custome UI components
import "components"

// JavaScript code
import "script.js" as Script

Window {
    id: window
    visible: true
    width: 800
    height: 600

    Text_read {
        id: random_text_read
        file_name: ":/resources/sampleWords-2.txt"
    }

    M_backgroud_tile {
        backgroud_image: "qrc:/resources/assets/bg.png"
    }

    M_horizental_layout {
        M_logo {
            id: top_logo
            size: parent.height/7
            anchors.right: parent.right
            anchors.margins: 10
            uri: "qrc:/resources/assets/bluescape-logo.svg"
        }
        M_title {
            id: main_title
            y: parent.height/2
            text: random_text_read.next_text()
            font_size: 44
            width: parent.width
            anchors.margins: 10
            color: "green"
            color_change_delay: 500
        }
        M_button {
            id: main_button
            height: parent.height/10
            width: parent.width/4
            anchors.bottom: parent.bottom
            anchors.margins: height/2
            image_up: "qrc:/resources/assets/button_up.png"
            image_down: "qrc:/resources/assets/button_down.png"
            label_text: "Click Me!"
            label_color: "white"
            on_click: Script.button_click
        }
    }
}
