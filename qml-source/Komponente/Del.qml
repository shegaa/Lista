import QtQuick 2.0
import QtQuick.Layouts 1.3

        RowLayout{
            id: redovi
            //width: lView.width
            //height: 50
            //Layout.fillWidth: false
            spacing: parent.parent.width/200
            Rectangle{
                Layout.preferredHeight: 50
                Layout.preferredWidth: parent.width/8
                color: "silver"
                border.width: 1
                Text {
                    text: role_indeks
                    width: parent.width
                    anchors.centerIn: parent
                    horizontalAlignment: Text.Center
                    wrapMode: Text.WrapAnywhere
                }}
            Rectangle{
                Layout.preferredHeight: 50
                Layout.preferredWidth: parent.width/8
                //color: "silver"
                border.width: 1
                Text {
                    text:role_ime//toString(studentLista.data(studentLista.index(1,1),0))//role_ime
                    width: parent.width
                    anchors.centerIn: parent
                    horizontalAlignment: Text.Center
                    wrapMode: Text.WrapAnywhere
                }}
            Rectangle{
                Layout.preferredHeight: 50
                Layout.preferredWidth: parent.width/8
                color: "silver"
                border.width: 1
                Text {
                    text: role_prezime
                    width: parent.width
                    anchors.centerIn: parent
                    horizontalAlignment: Text.Center
                    wrapMode: Text.WrapAnywhere
                }}
            Rectangle{
                Layout.preferredHeight: 50
                Layout.preferredWidth: parent.width/8
                //color: "silver"
                border.width: 1
                Text {
                    text: role_jmbg
                    width: parent.width
                    anchors.centerIn: parent
                    horizontalAlignment: Text.Center
                    wrapMode: Text.WrapAnywhere
                }}
            Rectangle{
                Layout.preferredHeight: 50
                Layout.preferredWidth: parent.width/8
                color: "silver"
                border.width: 1
                Text {
                    text: role_faks
                    width: parent.width
                    anchors.centerIn: parent
                    horizontalAlignment: Text.Center
                    wrapMode: Text.WrapAnywhere
                }}
            Rectangle{
                Layout.preferredHeight: 50
                Layout.preferredWidth: parent.width/8
                //color: "silver"
                border.width: 1
                Text {
                    text: role_smijer
                    width: parent.width
                    anchors.centerIn: parent
                    horizontalAlignment: Text.Center
                    wrapMode: Text.WrapAnywhere
                }}

            Image {
                source: role_slika
                sourceSize.height: parent.height
                sourceSize.width: parent.height
                width: parent.height
                /*MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        console.log(parent.sourceSize.height,parent.sourceSize.width)
                    }
                }*/
            }
            Rectangle{
                id: obrisiRed
                Layout.preferredHeight: 50
                Layout.preferredWidth: parent.width/8
                color: "silver"
                border.width: 1
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
