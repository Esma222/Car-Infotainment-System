import QtQuick 2.12
import QtQuick.Window 2.12
import "ui/BottomBar"
import "ui/RightScreen"
import "ui/LeftScreen"

Window {
    visible: true
    width: 1280
    height: 720
    title: qsTr("Car Infotainment")

    LeftScreen {
          id : leftScreen
        }

    RightScreen {
          id : rightScreen
        }

    BottomBar {
          id : bottomBar
    }

}
