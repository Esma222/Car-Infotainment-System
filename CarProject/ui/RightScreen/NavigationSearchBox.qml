import QtQuick 2.0

Rectangle{
    id: navigationSearchBox
    radius:5
    color: "#f7fafc"

    Image{
        id: searchIcon
        anchors{
             top: parent.top
             left: parent.left
             bottom: parent.bottom
             margins: 15
        }

        fillMode: Image.PreserveAspectFit
        source: "/ui/assets/searchIcon.jpeg"

    }
    Text{
        id: navigationPlaceHolderText
        visible: navigationTextInput.text === ""
        color:"#7d7e80"
        text: "Navigate"
        anchors{
          verticalCenter: parent.verticalCenter
          left: searchIcon.right
          leftMargin: 20
        }
    }
    TextInput{
       id:navigationTextInput
       clip: true //taşmayı önlüyoruz
       anchors{
           top:  parent.top
           bottom: parent.bottom
           right: parent.right
           left: searchIcon.right
           leftMargin: 20
       }
       verticalAlignment: Text.AlignVCenter
       font.pixelSize: 16
    }

}
