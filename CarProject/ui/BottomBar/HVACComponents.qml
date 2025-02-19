import QtQuick 2.0

Item {
    property string fontColor: "#7d7e80"
    property  var hvacController // oluşturduğumuz bu değer ile ayrı ayrı erişim sağlayabildik

    Rectangle{
      id:decrementButton
      anchors{
         left:parent.left
         top: parent.top
         bottom: parent.bottom
      }

      Text{
          id:decrementText
          anchors.centerIn: parent
          text: "<"
          font.pixelSize: 15
          color: fontColor

      }
      MouseArea{
          anchors.fill: parent
          onClicked: (hvacController.targetTemprature > 0 ? hvacController.incrementTargetTemprature(-1) : hvacController.incrementTargetTemprature(0))
      }

      width: height / 2
      color: "black"
    }
    Text{
        id:targetTempratureText
        anchors{
            left: decrementButton.right
            leftMargin: 15
            verticalCenter: parent.verticalCenter

        }
        text: hvacController.targetTemprature
        font.pixelSize: 24
        color: fontColor

    }
    Rectangle{
      id:incrementButton
      anchors{
         left:targetTempratureText.right
         leftMargin: 15
         top: parent.top
         bottom: parent.bottom
      }

      Text{
          id:incrementText
          anchors.centerIn: parent
          text: ">"
          font.pixelSize: 15
          color: fontColor

      }
      MouseArea{
          anchors.fill: parent
          onClicked: (hvacController.targetTemprature < 100 ? hvacController.incrementTargetTemprature(1) : hvacController.incrementTargetTemprature(0))
      }


      width: height / 2
      color: "black"
    }

}
