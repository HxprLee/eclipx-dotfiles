import Quickshell.Widgets
import Quickshell.Io
import QtQuick.Controls

Button {
    Process {
        id: powerCmd
        command: ["walker"]
        running: false
    }
    onClicked: powerCmd.running = true
    icon.source: "assets/icons/power.svg"
    icon.color: Colors.selected
    background: WrapperRectangle {
        color: Colors.background_color
        implicitHeight: 36
        implicitWidth: 36
        radius: 10
    }
}    

