import QtQuick 2.0
import QtLocation 5.12
import QtPositioning 5.12

Rectangle{
  id: rightScreen

  anchors{
      top: parent.top
      bottom: bottomBar.top
      right: parent.right

  }
  color: "White"


  Plugin{
      id: mapPlugin
      name: "osm" //open street map

  }

  Map{
      anchors.fill: parent
      plugin: mapPlugin
      center: QtPositioning.coordinate(39.92, 32.86) //ANKARA
      zoomLevel: 14
  }

  Image {
     id: lockIcon
     anchors{
     left: parent.left
     top: parent.top
     margins: 20
     }
     width: parent.width / 30
     fillMode: Image.PreserveAspectFit
     source: (systemHandler.carLocked ? "/ui/assets/lockIcon.png" : "/ui/assets/unlockIcon.png" )
     MouseArea {
       anchors.fill: parent
       onClicked: systemHandler.setCarLocked( !systemHandler.carLocked)
     }

   }
  Text{
    id : dateTimeDisplay
    anchors{
      left: lockIcon.right
      leftMargin: 30
      bottom: lockIcon.bottom

    }
    font.pixelSize: 18
    font.bold: true
    color: "black"
    text: systemHandler.CurrentTime


  }
  Text{
    id : outdoorTemprature
    anchors{
      left: dateTimeDisplay.right
      leftMargin: 30
      bottom: lockIcon.bottom

    }
    font.pixelSize: 18
    font.bold: true
    color: "black"
    text: systemHandler.outdoorTemp + "°F"


  }

  Text{
    id : userNameDisplay
    anchors{
      left: outdoorTemprature.right
      leftMargin: 30
      bottom: lockIcon.bottom

    }
    font.pixelSize: 18
    font.bold: true
    color: "black"
    text: systemHandler.UserName


  }
  NavigationSearchBox{
    id:navigationSearchBox
    width: parent.width * 1/3
    height:  parent.height * 1/12
    anchors{
        top:  lockIcon.bottom
        left: lockIcon.left
        topMargin: 15
    }
  }


  width: parent.width * 2/3


}
