import QtQuick 2.0
import QtQuick.Layouts 1.3
Rectangle{
    property var clr: ""
    color: clr
RowLayout{
    id: redovi
    //width: lView.width
    //height: 50
    //Layout.fillWidth: false
    spacing: parent.parent.parent.width/200
    Layout.leftMargin: parent.parent.parent.width/120
    Layout.rightMargin: parent.parent.parent.width/120
    //Layout.bottomMargin: parent.parent.parent.width/120
    //Layout.topMargin: parent.parent.parent.width/120
    Layout.bottomMargin: 0
    Layout.topMargin: 0
    Rectangle{
        Layout.preferredHeight: 50
        Layout.preferredWidth: parent.parent.width/10
        color: clr
        //border.width: 1
        Layout.leftMargin: 5
        Layout.rightMargin: 5
        Layout.bottomMargin: 5
        Layout.topMargin: 5
        Text {
            text: role_indeks
            width: parent.width
            anchors.centerIn: parent
            horizontalAlignment: Text.Center
            wrapMode: Text.WrapAnywhere
        }}
    Rectangle{
        Layout.preferredHeight: 50
        Layout.preferredWidth: parent.parent.width/10
        color: clr
        //border.width: 1
        Layout.leftMargin: parent.parent.parent.width/120
        Layout.rightMargin: parent.parent.parent.width/120
        //Layout.bottomMargin: parent.parent.parent.width/120
        //Layout.topMargin: parent.parent.parent.width/120
        Layout.bottomMargin: 0
        Layout.topMargin: 0
        Text {
            text:role_ime//toString(studentLista.data(studentLista.index(1,1),0))//role_ime
            width: parent.width
            anchors.centerIn: parent
            horizontalAlignment: Text.Center
            wrapMode: Text.WrapAnywhere
        }}
    Rectangle{
        Layout.preferredHeight: 50
        Layout.preferredWidth: parent.parent.width/10
        color: clr
        //border.width: 1
        Layout.leftMargin: parent.parent.parent.width/120
        Layout.rightMargin: parent.parent.parent.width/120
        //Layout.bottomMargin: parent.parent.parent.width/120
        //Layout.topMargin: parent.parent.parent.width/120
        Text {
            text: role_prezime
            width: parent.width
            anchors.centerIn: parent
            horizontalAlignment: Text.Center
            wrapMode: Text.WrapAnywhere
        }}
    Rectangle{
        Layout.preferredHeight: 50
        Layout.preferredWidth: parent.parent.width/10
        color: clr
        //border.width: 1
        Layout.leftMargin: parent.parent.parent.width/120
        Layout.rightMargin: parent.parent.parent.width/120
        //Layout.bottomMargin: parent.parent.parent.width/120
        //Layout.topMargin: parent.parent.parent.width/120
        Text {
            text: role_jmbg
            width: parent.width
            anchors.centerIn: parent
            horizontalAlignment: Text.Center
            wrapMode: Text.WrapAnywhere
        }}
    Rectangle{
        Layout.preferredHeight: 50
        Layout.preferredWidth: parent.parent.width/10
        color: clr
        //border.width: 1
        Layout.leftMargin: parent.parent.parent.width/120
        Layout.rightMargin: parent.parent.parent.width/120
        //Layout.bottomMargin: parent.parent.parent.width/120
        //Layout.topMargin: parent.parent.parent.width/120
        Text {
            text: role_faks
            width: parent.width
            anchors.centerIn: parent
            horizontalAlignment: Text.Center
            wrapMode: Text.WrapAnywhere
        }}
    Rectangle{
        Layout.preferredHeight: 50
        Layout.preferredWidth: parent.parent.width/10
        color: clr
        //border.width: 1
        Layout.leftMargin: parent.parent.parent.width/120
        Layout.rightMargin: parent.parent.parent.width/120
        //Layout.bottomMargin: parent.parent.parent.width/120
        //Layout.topMargin: parent.parent.parent.width/120
        Text {
            text: role_smijer
            width: parent.width
            anchors.centerIn: parent
            horizontalAlignment: Text.Center
            wrapMode: Text.WrapAnywhere
        }}
    Rectangle{
        Layout.preferredHeight: 50
        Layout.preferredWidth: parent.parent.width/10
        //color: "silver"
        //border.width: 1
        color: clr
        Layout.leftMargin: parent.parent.parent.width/120
        Layout.rightMargin: parent.parent.parent.width/120
        //Layout.bottomMargin: parent.parent.parent.width/120
        //Layout.topMargin: parent.parent.parent.width/120
        Image {
            source: role_slika
            /*sourceSize.height: parent.height
            sourceSize.width: parent.height
            width: parent.height*/
            fillMode: Image.PreserveAspectFit
            anchors.fill: parent
            /*MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        console.log(parent.sourceSize.height,parent.sourceSize.width)
                    }
                }*/
        }}
    Rectangle{
        id: obrisiRed
        Layout.preferredHeight: 50
        Layout.preferredWidth: parent.parent.width/10
        color: clr
        //border.width: 1
        Layout.leftMargin: parent.parent.parent.width/120
        Layout.rightMargin: parent.parent.parent.width/120
        //Layout.bottomMargin: parent.parent.parent.width/120
        //Layout.topMargin: parent.parent.parent.width/120
        Text {
            text: "Obrisi"
            width: parent.width
            anchors.centerIn: parent
            horizontalAlignment: Text.Center
        }
        MouseArea{//morao sam mouseArea umjesto button da mogu dobitiindeks
            anchors.fill: parent
            onClicked: {
                console.log(index)
                studentModel.obrisiStudenta(index)
                //lView.forceLayout()
            }}

    }}
}
