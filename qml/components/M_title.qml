import QtQuick 2.12

Text {
    id: m_title_id
    PropertyAnimation {
        id: animate_color;
        target: m_title_id;
        properties: "color";
        duration: 0
        to: "";
    }
    property alias font_size: m_title_id.font.pointSize
    property alias color_change_delay: animate_color.duration
    property alias color_change_to: animate_color.to
    property var color_change_start: animate_color.start

    font.bold: true
    font.family: "Arial"
    horizontalAlignment: Text.AlignHCenter
    fontSizeMode: Text.Fit
}
