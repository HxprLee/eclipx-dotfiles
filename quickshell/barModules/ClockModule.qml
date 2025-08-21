import Quickshell
import Quickshell.Widgets
import QtQuick.Controls

Button {
    id: clock
    text: Qt.formatDateTime(clocktext.date, "hh:mm")
    font.pointSize: 11
    icon.source: "assets/icons/clock.svg"
    icon.color: Colors.selected
    palette.buttonText: clock.icon.color
    horizontalPadding: 10
    SystemClock {
        id: clocktext
        precision: SystemClock.Seconds
    }

    background: WrapperRectangle {
        color: clock.down ? "blue" : Colors.background_color
        implicitHeight: 36
        radius: 10
    }
}           
