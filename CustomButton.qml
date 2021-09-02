import QtQuick 2.0
import QtMultimedia 5.15
import QtQuick.Layouts 1.15

Rectangle {
    id:customButton

    property alias leftIconSrc: leftIcon.source
    property alias rightIconSrc: rightIcon.source
    property alias show_right_icon: rightIcon.visible
    property alias show_left_icon: leftIcon.visible
    property alias txtPixelSize: btn_txt.font.pixelSize
    property alias txt: btn_txt.text

    property color clr_enter: "#dcdcdc"
    property color clr_exit: "#ffffff"
    property color clr_click: "#aba9b2"
    property color clr_release: "#ffffff"

    signal clickedLeft()
    signal clickedRight()
    signal release()

    Layout.preferredHeight: btn_txt.contentHeight*2
    Layout.preferredWidth: btn_txt.contentWidth*3.5
    //width: btn_txt.contentWidth*2
    //height: btn_txt.contentHeight*2
    radius: 30
    color: "silver"
    border.width: 2
    border.color: "black"
    onChildrenChanged: {
        Layout.preferredHeight=btn_txt.contentHeight*2
        Layout.preferredWidth=btn_txt.contentWidth*2
    }

    Image {
        id: leftIcon
        source: ""
        //width: parent.width/5
        Layout.preferredHeight: btn_txt.contentHeight*0.8
        clip: false
        anchors.bottomMargin: btn_txt.contentHeight*0.1
        anchors.topMargin: btn_txt.contentHeight*0.1
        anchors.leftMargin: btn_txt.contentWidth*0.1
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        fillMode: Image.PreserveAspectFit

    }
    Image {
        id: rightIcon
        source: ""
       // width: parent.width/5
        Layout.preferredHeight: btn_txt.contentHeight*0.8
        clip: false
        anchors.bottomMargin: btn_txt.contentHeight*0.1
        anchors.topMargin: btn_txt.contentHeight*0.1
        anchors.rightMargin: btn_txt.contentWidth*0.1
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        fillMode: Image.PreserveAspectFit

    }

    Text {
        id: btn_txt
        text: qsTr("button")

        anchors.bottomMargin: 5
        anchors.centerIn: parent

        //font.bold: true
        //font.pointSize: 10
    }
    /*SoundEffect {
            id: wow
            source: "sound/spongebobWow.wav"
        }*/

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true

        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            if (mouse.button === Qt.LeftButton)
            {
                parent.clickedLeft()
            }
            else if(mouse.button === Qt.RightButton)
            {
                parent.clickedRight()
            }
        }

        onPressed: {
            color = clr_click
            wow.play()
        }

        onReleased: {
            color = clr_enter
            parent.release()
        }

        onEntered: {
            color = clr_enter
        }

        onExited: {
            color = clr_exit
        }
    }
}

