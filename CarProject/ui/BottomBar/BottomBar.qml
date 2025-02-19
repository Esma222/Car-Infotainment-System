import QtQuick 2.0

Rectangle
{
  id : bottomBar
  anchors{ //for positioning of grid row and column.Each item can be thought of as having a set of 7 invisible "anchor lines": left, horizontalCenter, right, top, verticalCenter, baseline, and bottom.
       left: parent.left
       right: parent.right
       bottom: parent.bottom

  }

  Image {
      id: carIcon
      anchors.fill:   parent.Right
      height: parent.height
      fillMode: Image.PreserveAspectFit
      source: "/ui/assets/carIcon.png"
  }
  HVACComponents{
      id: driverHVACControl
      anchors{
        bottom: parent.bottom
        top: parent.top
        left: carIcon.right
        leftMargin: 40
      }
      hvacController: driverHVAC

  }

  VolumeControlComponent{
      id: volumeControlComponent
      anchors{
        right: parent.right
        top: parent.top
        bottom: parent.bottom
        rightMargin: 150
      }

  }

  HVACComponents{
      id: passengerHVACControl
      anchors{
        bottom: parent.bottom
        top: parent.top
        right: volumeControlComponent.left
        rightMargin: 150
      }
      hvacController: passengerHVAC

  }


  color:"black"
  height: parent.height / 12


}
