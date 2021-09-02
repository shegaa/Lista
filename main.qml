import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.2
import QtQml 2.2
//import "qml-source/Komponente"
Window {
    visible: true
    width: 600
    height: 600
    title: qsTr("studenti")
    property string sl:"slike/lightsteelblue.png"
    property string tekstGreske: "Pogresno unesena polja:"
    property int brojacGreske: 0
    property int imgWidth: 60
    // minimumHeight: 640
    //minimumWidth: 600
    //maximumWidth: 600
    Pane{
        height: parent.height
        width: parent.width
        background: Rectangle{
            color: "beige"
            //height: parent.height
            //width: parent.width
            anchors.fill: parent
        }

        ColumnLayout{
            //height: parent.height
            height: parent.height
            width: parent.width
            //Layout.fillHeight: true
            //height: parent.height
            //Layout.preferredHeight: parent.height
            //anchors.fill: parent
            ListView{
                id:listaStudenata
                Layout.preferredHeight: 2*parent.height/5
                //height: 200
                //Layout.fillHeight: true
                //implicitHeight: 200
                Layout.preferredWidth:  parent.width
                //anchors.fill: parent
                model: studentProxy
                spacing: 0
                clip: true
                /*Layout.leftMargin: parent.parent.width/120
                Layout.rightMargin: parent.parent.width/120
                Layout.bottomMargin: parent.parent.width/120
                Layout.topMargin: parent.parent.width/120*/
                //spacing: 0
                header:
                    Rectangle{
                    width: listaStudenata.width
                    height: listaStudenata.height/5
                    color: "lavender"
                    //border.width: 2
                        RowLayout{
                        width: listaStudenata.width
                        //width:530
                        //Layout.fillWidth: false
                        //spacing: parent.parent.width/200
                        /*Layout.leftMargin: parent.parent.width/120
                    Layout.rightMargin: parent.parent.width/120
                    Layout.bottomMargin: parent.parent.width/120
                    Layout.topMargin: parent.parent.width/120*/
                        Rectangle{
                            Layout.preferredHeight: parent.parent.height
                            Layout.preferredWidth: parent.parent.width/11
                            color: "lavender"
                            //border.width: 1
                            Layout.leftMargin: parent.parent.width/120
                            Layout.rightMargin: parent.parent.width/120
                            //Layout.bottomMargin: parent.parent.width/120
                            //Layout.topMargin: parent.parent.width/120
                            Text {
                                text: qsTr("Indeks:")
                                width:  parent.width
                                anchors.centerIn: parent
                                horizontalAlignment: Text.Center
                                font.bold: true
                            }
                        }
                        Rectangle{
                            Layout.preferredHeight: parent.parent.height
                            Layout.preferredWidth: parent.parent.width/11
                            //border.width: 1
                            color: "lavender"
                            Layout.leftMargin: parent.parent.width/120
                            Layout.rightMargin: parent.parent.width/120
                            //Layout.bottomMargin: parent.parent.width/120
                            //Layout.topMargin: parent.parent.width/120
                            Text {
                                text: qsTr("Ime:")
                                width: parent.width
                                anchors.centerIn: parent
                                horizontalAlignment: Text.Center
                                font.bold: true
                            }
                        }
                        Rectangle{
                            Layout.preferredHeight: parent.parent.height
                            Layout.preferredWidth: parent.parent.width/11
                            color: "lavender"
                            //border.width: 1
                            Layout.leftMargin: parent.parent.width/120
                            Layout.rightMargin: parent.parent.width/120
                            //Layout.bottomMargin: parent.parent.width/120
                            //Layout.topMargin: parent.parent.width/120
                            Text {
                                text: qsTr("Prezime:")
                                width: parent.width
                                anchors.centerIn: parent
                                horizontalAlignment: Text.Center
                                font.bold: true
                            }
                        }
                        Rectangle{
                            Layout.preferredHeight: parent.parent.height
                            Layout.preferredWidth: parent.parent.width/11
                            //border.width: 1
                            color: "lavender"
                            Layout.leftMargin: parent.parent.width/120
                            Layout.rightMargin: parent.parent.width/120
                            //Layout.bottomMargin: parent.parent.width/120
                            //Layout.topMargin: parent.parent.width/120
                            Text {
                                text: qsTr("JMBG:")
                                width: parent.width
                                anchors.centerIn: parent
                                horizontalAlignment: Text.Center
                                font.bold: true
                            }}
                        Rectangle{
                            Layout.preferredHeight: parent.parent.height
                            Layout.preferredWidth: parent.parent.width/11
                            color: "lavender"
                            //border.width: 1
                            Layout.leftMargin: parent.parent.width/120
                            Layout.rightMargin: parent.parent.width/120
                            //Layout.bottomMargin: parent.parent.width/120
                            //Layout.topMargin: parent.parent.width/120
                            Text {
                                text: qsTr("Fakultet:")
                                width: parent.width
                                anchors.centerIn: parent
                                horizontalAlignment: Text.Center
                                font.bold: true
                            }}
                        Rectangle{
                            Layout.preferredHeight: parent.parent.height
                            Layout.preferredWidth: parent.parent.width/11
                            //border.width: 1
                            color: "lavender"
                            Layout.leftMargin: parent.parent.width/120
                            Layout.rightMargin: parent.parent.width/120
                            //Layout.bottomMargin: parent.parent.width/120
                            //Layout.topMargin: parent.parent.width/120
                            Text {
                                text: qsTr("Smijer:")
                                width: parent.width
                                anchors.centerIn: parent
                                horizontalAlignment: Text.Center
                                font.bold: true
                            }}
                        Rectangle{
                            Layout.preferredHeight: parent.parent.height
                            Layout.preferredWidth: parent.parent.width/11
                            //color: "silver"
                            //border.width: 1
                            color: "lavender"
                            Layout.leftMargin: parent.parent.width/120
                            Layout.rightMargin: parent.parent.width/120
                            //Layout.bottomMargin: parent.parent.width/120
                            //Layout.topMargin: parent.parent.width/120
                            Text {
                                text: qsTr("Slika:")
                                width: parent.width
                                anchors.centerIn: parent
                                horizontalAlignment: Text.Center
                                font.bold: true
                            }}
                        Rectangle{
                            Layout.preferredHeight: parent.parent.height
                            Layout.preferredWidth: parent.parent.width/10
                            //color: "beige"
                            color: "lavender"
                            //border.width: 0
                            Layout.leftMargin: parent.parent.width/120
                            Layout.rightMargin: parent.parent.width/120
                            //Layout.bottomMargin: parent.parent.width/120
                            //Layout.topMargin: parent.parent.width/120
                        }}}

                delegate: Del{
                    height:60;
                    width:listaStudenata.width
                    Component.onCompleted: {
                        if(index%2==0)
                        {
                            clr="lightsteelblue";
                        }
                        else{
                            clr="lavender"
                        }

                    }
                }
                /*onCurrentIndexChanged: {
                        console.log(model.get(currentIndex))
                  }*/
            }
            GridLayout{
                columns: 3
                rowSpacing: parent.width*0.009
                columnSpacing: parent.height*0.009
                //width: parent.width
                Layout.preferredHeight: 2*parent.height/5
                Layout.preferredWidth: parent.width
                Text {
                    Layout.preferredHeight: parent.height/5
                    text: qsTr("Ime:")
                    font.pointSize: parent.height/10
                }
                Text {
                    Layout.preferredHeight: parent.height/5
                    text: qsTr("Prezime:")
                    font.pointSize: parent.height/10
                }
                Text {
                    Layout.preferredHeight: parent.height/5
                    text: qsTr("JMBG:")
                    font.pointSize: parent.height/10
                }
                Rectangle{
                    Layout.preferredHeight: parent.height/5//height: 200
                    Layout.preferredWidth:  parent.width/5
                    color: "lightsteelblue"
                    border.width: 1
                    border.color: "black"
                    TextInput{
                        id: ime
                        anchors.fill: parent
                        maximumLength: 10
                        //validator: RegExpValidator { regExp: /[A-Z][a-z]*/}
                        activeFocusOnTab: true
                        selectByMouse: true
                        font.capitalization: Font.Capitalize
                    }
                }
                Rectangle{
                    Layout.preferredHeight: parent.height/5//height: 200
                    Layout.preferredWidth:  parent.width/5
                    color: "lightsteelblue"
                    border.width: 1
                    border.color: "black"
                    TextInput{
                        id: prezime
                        anchors.fill: parent
                        maximumLength: 10
                        //validator: RegExpValidator { regExp: /[A-Z][a-z]*/}
                        activeFocusOnTab: true
                        selectByMouse: true
                        font.capitalization: Font.Capitalize
                    }
                }
                Rectangle{
                    Layout.preferredHeight: parent.height/5//height: 200
                    Layout.preferredWidth:  parent.width/5
                    color: "lightsteelblue"
                    border.width: 1
                    border.color: "black"
                    TextInput{
                        id: jmbg
                        anchors.fill: parent
                        maximumLength: 13
                        validator: RegExpValidator { regExp: /[0-9]+/}
                        activeFocusOnTab: true
                        selectByMouse: true
                        onTextChanged: {
                            if (jmbg.length==13 || jmbg.length==0){
                                jmbg.parent.border.width=0;
                                jmbg.parent.border.color="black";
                            }
                            else{
                                jmbg.parent.border.width=1;
                                jmbg.parent.border.color="red";
                            }
                        }
                    }
                }

                Text {
                    text: qsTr("Indeks:")
                    Layout.preferredHeight: parent.height/5
                    font.pointSize: parent.height/10
                }
                Text {
                    text: qsTr("Fakultet:")
                    Layout.preferredHeight: parent.height/5
                    font.pointSize: parent.height/10
                }
                Text {
                    text: qsTr("Smijer:")
                    Layout.preferredHeight: parent.height/5
                    font.pointSize: parent.height/10
                }

                Rectangle{
                    Layout.preferredHeight: parent.height/5//height: 200
                    Layout.preferredWidth:  parent.width/5
                    color: "lightsteelblue"
                    border.width: 1
                    border.color: "black"
                    TextInput{
                        id: indeks
                        anchors.fill: parent
                        maximumLength: 10
                        activeFocusOnTab: true
                        selectByMouse: true
                        font.capitalization: Font.AllUppercase
                    }
                }

                Rectangle{
                    Layout.preferredHeight: parent.height/5//height: 200
                    Layout.preferredWidth:  parent.width/5
                    color: "lightsteelblue"
                    border.width: 1
                    border.color: "black"
                    TextInput{
                        id: faks
                        anchors.fill: parent
                        maximumLength: 10
                        activeFocusOnTab: true
                        selectByMouse: true
                        font.capitalization: Font.Capitalize
                    }
                }
                Rectangle{
                    Layout.preferredHeight: parent.height/5//height: 200
                    Layout.preferredWidth:  parent.width/5
                    color: "lightsteelblue"
                    border.width: 1
                    border.color: "black"
                    TextInput{
                        id: smijer
                        anchors.fill: parent
                        maximumLength: 10
                        activeFocusOnTab: true
                        selectByMouse: true
                        font.capitalization: Font.Capitalize
                    }
                }
            }

            FileDialog{
                id: birajSliku
                title: "Izaberite sliku"
                folder: shortcuts.home
                nameFilters: [ "Image files (*.png *.jpg)"]
                onAccepted: {
                    sl=birajSliku.fileUrl
                    slika.source = sl
                    buttonSlika.text=""
                }
                onRejected: {
                }

            }
            Image{
                id:slika
                Layout.preferredHeight: parent.height/6
                Layout.preferredWidth: parent.width/6
                source: sl
                sourceSize.height: 100
                sourceSize.width: 100
                Button{
                    id:buttonSlika
                    background: transparent
                    width: parent.width
                    height: parent.height
                    text: "Izaberite sliku"
                    activeFocusOnTab: false
                    onClicked:{
                        birajSliku.visible=true;
                    }
                }}

            CustomButton{
                //Layout.preferredWidth: parent.width/5
                id: dodaj
                //Layout.preferredHeight: height
                //Layout.preferredWidth: width
                txtPixelSize: parent.height/40
                txt: "Dodaj"
                color: "lightsteelblue"
                clr_exit: "lightsteelblue"
                clr_enter: "lavender"
                leftIconSrc: "slike/sundjerbob.png"
                rightIconSrc: "slike/circle-png.png"
                onClickedLeft: {
                    brojacGreske=0;
                    if(ime.text==""){
                        tekstGreske+=" ime";
                        brojacGreske++;
                        ime.parent.border.width=1;
                        ime.parent.border.color="red";
                    }
                    if(prezime.text==""){
                        brojacGreske++;
                        if(brojacGreske>0){
                            tekstGreske+=","
                        }
                        tekstGreske+=" prezime";
                        prezime.parent.border.width=1;
                        prezime.parent.border.color="red";
                    }
                    if(jmbg.text=="" || jmbg.length!=13){//mogao sam i samo provjeriti da li je border crven
                        brojacGreske++;
                        if(brojacGreske>0){
                            tekstGreske+=","
                        }
                        tekstGreske+=" jmbg";
                        jmbg.parent.border.width=1;
                        jmbg.parent.border.color="red";
                    }
                    if(indeks.text==""){
                        brojacGreske++;
                        if(brojacGreske>0){
                            tekstGreske+=","
                        }
                        tekstGreske+=" indeks";
                        indeks.parent.border.width=1;
                        indeks.parent.border.color="red";
                    }
                    if(faks.text==""){
                        brojacGreske++;
                        if(brojacGreske>0){
                            tekstGreske+=","
                        }
                        tekstGreske+=" fakultet";
                        faks.parent.border.width=1;
                        faks.parent.border.color="red";
                    }
                    if(smijer.text==""){
                        brojacGreske++;
                        if(brojacGreske>0){
                            tekstGreske+=","
                        }
                        tekstGreske+=" smijer";
                        smijer.parent.border.width=1;
                        smijer.parent.border.color="red";
                    }
                    if(slika.source=="slike/prazno.png"){
                        brojacGreske++;
                        if(brojacGreske>0){
                            tekstGreske+=","
                        }
                        tekstGreske+=" slika";
                    }
                    if(brojacGreske>0){
                        tekstGreske+=".";
                        greskaPopup.visible=true;
                        return;
                    }

                    kontroler.dodaj(ime.text,prezime.text,jmbg.text,indeks.text, faks.text, smijer.text, slika.source)
                    //stmodel.dodajStudenta(ime.text,prezime.text,jmbg.text,indeks.text, faks.text, smijer.text, slika.source)
                    ime.text="";
                    prezime.text="";
                    jmbg.text="";
                    indeks.text="";
                    faks.text="";
                    smijer.text="";
                    slika.source="slike/prazno.png"
                    buttonSlika.text="Izaberite sliku"
                    ime.parent.border.width=0;
                    ime.parent.border.color="black";
                    prezime.parent.border.width=0;
                    prezime.parent.border.color="black";
                    indeks.parent.border.width=0;
                    indeks.parent.border.color="black";
                    smijer.parent.border.width=0;
                    smijer.parent.border.color="black";
                    faks.parent.border.width=0;
                    faks.parent.border.color="black";
                    tekstGreske="Pogresno unesena polja:"
                }
            }

            /*Button{
            Layout.preferredHeight: parent.height/10
            Layout.preferredWidth: parent.width/5
            id: dodaj
            text: "Dodaj"
            onClicked: {
                brojacGreske=0;
                if(ime.text==""){
                    tekstGreske+=" ime";
                    brojacGreske++;
                    ime.parent.border.width=1;
                    ime.parent.border.color="red";
                }
                if(prezime.text==""){
                    brojacGreske++;
                    if(brojacGreske>0){
                        tekstGreske+=","
                    }
                    tekstGreske+=" prezime";
                    prezime.parent.border.width=1;
                    prezime.parent.border.color="red";
                }
                if(jmbg.text=="" || jmbg.length!=13){//mogao sam i samo provjeriti da li je border crven
                    brojacGreske++;
                    if(brojacGreske>0){
                        tekstGreske+=","
                    }
                    tekstGreske+=" jmbg";
                    jmbg.parent.border.width=1;
                    jmbg.parent.border.color="red";
                }
                if(indeks.text==""){
                    brojacGreske++;
                    if(brojacGreske>0){
                        tekstGreske+=","
                    }
                    tekstGreske+=" indeks";
                    indeks.parent.border.width=1;
                    indeks.parent.border.color="red";
                }
                if(faks.text==""){
                    brojacGreske++;
                    if(brojacGreske>0){
                        tekstGreske+=","
                    }
                    tekstGreske+=" fakultet";
                    faks.parent.border.width=1;
                    faks.parent.border.color="red";
                }
                if(smijer.text==""){
                    brojacGreske++;
                    if(brojacGreske>0){
                        tekstGreske+=","
                    }
                    tekstGreske+=" smijer";
                    smijer.parent.border.width=1;
                    smijer.parent.border.color="red";
                }
                if(slika.source=="slike/prazno.png"){
                    brojacGreske++;
                    if(brojacGreske>0){
                        tekstGreske+=","
                    }
                    tekstGreske+=" slika";
                }
                if(brojacGreske>0){
                    tekstGreske+=".";
                    greskaPopup.visible=true;
                    return;
                }

                kontroler.dodaj(ime.text,prezime.text,jmbg.text,indeks.text, faks.text, smijer.text, slika.source)
                //stmodel.dodajStudenta(ime.text,prezime.text,jmbg.text,indeks.text, faks.text, smijer.text, slika.source)
                ime.text="";
                prezime.text="";
                jmbg.text="";
                indeks.text="";
                faks.text="";
                smijer.text="";
                slika.source="slike/prazno.png"
                buttonSlika.text="Izaberite sliku"
                ime.parent.border.width=0;
                ime.parent.border.color="black";
                prezime.parent.border.width=0;
                prezime.parent.border.color="black";
                indeks.parent.border.width=0;
                indeks.parent.border.color="black";
                smijer.parent.border.width=0;
                smijer.parent.border.color="black";
                faks.parent.border.width=0;
                faks.parent.border.color="black";
                tekstGreske="Pogresno unesena polja:"
            }
        }*/

            /*Button{
            id: obrisi
            text: "Obrisi"
            onClicked: {
                modelStudenta.izbrisiStudenta()
            }
        }*/


            Rectangle{
                //width: window.width
                //width: parent.parent.width
                //width: 600
                Layout.preferredHeight: 5
                Layout.preferredWidth: parent.width
                color: "black"
            }

            /*ButtonGroup{
            buttons: dugmiciZaPretragu.children
            //Component.onCompleted: reset.checked=true;
        }*/
            Label{
                text: "Pretraga"
                font.bold: true
                font.pointSize: parent.height/30
            }

            /*Row{
            id: dugmiciZaPretragu
            RadioButton{
                text: "Indeks"
                id:indeksButton
            }
            RadioButton{
                text: "Ime"
                id:imeButton
            }
            RadioButton{
                text: "Prezime"
                id:prezimeButton
            }
            RadioButton{
                text: "JMBG"
                id:jmbgButton
            }
            RadioButton{
                text: "Fakultet"
                id:faksButton
            }
            RadioButton{
                text: "Smijer"
                id:smijerButton
            }
            RadioButton{
                id:reset
                visible: false
                //Component.onCompleted: reset.checked=true
            }
        }*/
            /*GridLayout{
            columns: 2
            Rectangle {
                width: 100
                height: 20
                Text {
                    //width: parent.width
                    //height: parent.height
                    text: qsTr("Pojam za pretragu:")
                }}*/
            Rectangle{
                color: "lightsteelblue"
                Layout.preferredWidth: 120
                Layout.preferredHeight: 20
                border.width: 1
                border.color: "black"
                TextInput{
                    id: pojamPretrage
                    text: ""
                    //height: parent.height
                    //width: parent.width
                    selectByMouse: true
                    anchors.fill: parent
                    activeFocusOnTab: true
                    onTextChanged: {
                        studentProxy.setPojamPretrage(text)
                    }}


                /*Button{
            id: pretraga
            text: "Pretrazi"
            onClicked: {
                //reset.checked=true;
                //studentL.ponistiPretragu();
                studentL.setPojamPretrage(pojamPretrage.text);
                //dugmiciZaPretragu.update();
                if(indeksButton.checked){
                    studentL.setFilter(3);
                }
                    else if(imeButton.checked){
                    studentL.setFilter(0);
                }
                    else if(prezimeButton.checked){
                    studentL.setFilter(1);
                }
                    else if(jmbgButton.checked){
                    studentL.setFilter(2);
                }
                    else if(faksButton.checked){
                    studentL.setFilter(4);
                }
                    else if(smijerButton.checked){
                    studentL.setFilter(5);
                }
                else{
                    //reset.checked=true;
                    //studentL.setFilter(10);//nepotrebno
                }//probacu i s null
            }*/
            }
            /*Rectangle{
                Layout.preferredHeight: 20
            }*/

            /*Button{
                id:ponistiPretragu
                text: "Ponisti Pretragu"
                onClicked:{
                    /*imeButton.checked=false;
                prezimeButton.checked=false;
                jmbgButton.checked=false;
                faksButton.checked=false;
                smijerButton.checked=false;*/
            /*studentL.setPojamPretrage("");
                studentL.setFilter(10);
                    studentL.ponistiPretragu()
                    //reset.checked=true;
                    //studentL.setPojamPretrage(pojamPretrage.text);
                }}*///}
        }
        MessageDialog{
            id: greskaPopup
            title: "Greska"
            text: tekstGreske
            icon: StandardIcon.Warning
            visible: false
            onAccepted: visibility=false;
        }

        /*Component{
        id:delegat
        RowLayout{
            id: redovi
            //width: lView.width
            //height: 50
            //Layout.fillWidth: false
            spacing: 0
            Rectangle{
                height: 50
                width: 60
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
                height: 50
                width: 60
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
                height: 50
                width: 70
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
                height: 50
                width: 100
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
                height: 50
                width: 100
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
                height: 50
                width: 100
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
            }
            Rectangle{
                id: obrisiRed
                height: 40
                width: 60
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

            }}}*/
    }
}
