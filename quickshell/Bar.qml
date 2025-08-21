import Quickshell
import QtQuick
import "barModules"
Scope {
    id: root
    Variants {
        model: Quickshell.screens
        PanelWindow {
            id: bar
            required property var modelData
            screen: modelData
            anchors {
                top: true
                left: true
                right: true
            }
            color: "transparent"
            implicitHeight: 45

            //Right side modules
            Row {
                id: rightItemRow
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.rightMargin: 10
                spacing: 6
                //Modules below
                TrayModule {}
                ClockModule {}
                PowerModule {} 
            }
            //Left side modules
            Row {
                id: leftItemRow
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.rightMargin: 10
                spacing: 6
            }
        }
    }

}