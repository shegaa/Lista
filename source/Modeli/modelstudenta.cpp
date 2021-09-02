/*#include "modelstudenta.h"

/*ModelStudenta::ModelStudenta()
{

}*/

/*Q_SLOT void ModelStudenta::dodajStudenta(const QString& ime, const QString& prezime, const QString& jmbg,
                          const QString& in, const QString& fa, const QString& sm,const QString& sl){
    const int newRow = m_model->rowCount();
    Osoba *o = new Osoba(ime,prezime,jmbg);
    const Student  noviStudent(*o,in,fa,sm,sl);
    m_model->insertRow(newRow);
    m_model->setData(m_model->index(newRow,0),ime,studentViewModel::studentViewModel_Roles::ime);
    //m_model->setData(m_model->index(newRow,0),QVariant::fromValue(noviStudent),Qt::EditRole);
}

ModelStudenta::ModelStudenta(QObject* parent):QObject(parent){
    {
            m_model = new QStandardItemModel(this);
            m_model -> insertColumn(0);
            popuniModel();
        }
}

Q_SLOT void ModelStudenta::izbrisiStudenta(){
    m_model->removeRow(m_model->rowCount()-1);
}
Q_SLOT void ModelStudenta::obrisiRed(int red){
    m_model->removeRow(red);
    /*for(int i=1;i<m_model->rowCount();i++){
        //if(m_model.findI)
        m_model->match(1,)
    }*/
/*}
//ModelStudenta();
QAbstractItemModel* ModelStudenta::model() const{
    return m_model;
}
void ModelStudenta::popuniModel(){//cisto radi provjere
    //Osoba *o = new Osoba("prvoIme","prvoPrezime",1234);
    //Student *stud = new Student(*o,"prviIndeks","prviFaks","prviSmijer","prvaSLika");
    dodajStudenta("prvoIme","prvoPrezime","1111","prviIndeks","prviFaks","prviSmijer","slike/prvaslika.jpg");
    dodajStudenta("prvoIme","prvoPrezime","2222","prviIndeks","prviFaks","prviSmijer","slike/drugaslika.jpg");
    dodajStudenta("prvoIme","prvoPrezime","3333","prviIndeks","prviFaks","prviSmijer","slike/trecaslika.jpg");
    dodajStudenta("prvoIme","prvoPrezime","1111","prviIndeks","prviFaks","prviSmijer","slike/cetvrtaslika.jpg");
    dodajStudenta("prvoIme","prvoPrezime","1111","prviIndeks","prviFaks","prviSmijer","slike/petaslika.jpg");
}
*/
