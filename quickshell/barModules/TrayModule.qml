import Quickshell.Services.SystemTray
import QtQuick
import Quickshell.Widgets
import "services" 

WrapperRectangle {
    implicitHeight: 36
    color: Colors.background_color
    radius: 10
    Item {
        id: root
        readonly property Repeater items: items
        clip: true
        visible: width > 0 && height > 0 // To avoid warnings about being visible with no size
        implicitWidth: layout.implicitWidth
        implicitHeight: layout.implicitHeight
        Row {
            anchors.centerIn: root
            id: layout
            spacing: 8
            padding: 12
            Repeater {
                id: items
                model: SystemTray.items
                TrayItem {}
            }
        }
    }
}
