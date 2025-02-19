import QtQuick 2.0

Item {
    property string fontColor: "#7d7e80"

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
          onClicked: audioController.incrementVolume(-5)
      }

      width: height / 2
      color: "black"
    }


    Image{
        id:volumeIcon
        height: parent.height
        anchors{
            left: decrementButton.right
            leftMargin: 10
            right:incrementButton.left
            verticalCenter: parent.verticalCenter
        }
        source:  (audioController.VolumeLvel != 0 ?"/ui/assets/volumeIcon.png" : "/ui/assets/muteIcon2.png")

    }
    Text{
        id:volumeTextLabel
        anchors.centerIn: volumeIcon
        text: audioController.VolumeLvel
        font.pixelSize: 12
        color: "black"

    }

    Rectangle{
      id:incrementButton
      anchors{
         left:volumeIcon.right
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
          onClicked: audioController.incrementVolume(5)
      }


      width: height / 2
      color: "black"
    }

}
