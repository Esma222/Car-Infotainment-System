import QtQuick 2.0

Rectangle{
  id: leftScreen

  anchors{
      top: parent.top
      bottom: bottomBar.top
      left: parent.left
      right: rightScreen.left

  }
  color: "white"

  Image {
      id: carRender
      anchors.centerIn:   parent
      width: parent.width * .75
      fillMode: Image.PreserveAspectFit
      source: "/ui/assets/CarRender.jpg"
  }


}
