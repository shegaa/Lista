/*#include "studentviewmodel.h"

/*studentViewModel::studentViewModel()
{

}*/
/*QHash<int,QByteArray> roleNames() {
        QHash<int, QByteArray> roles;
        roles[studentViewModel::ime] = "role_ime";
        roles[studentViewModel::prezime] = "role_prezime";
        roles[studentViewModel::jmbg] = "role_jmbg";
        roles[studentViewModel::indeks] = "role_indeks";
        roles[studentViewModel::faks] = "role_faks";
        roles[studentViewModel::smijer] = "role_smijer";
        roles[studentViewModel::slika] = "role_slika";
        return roles;
    }
//studentViewModel();
 Q_SLOT void studentViewModel::dodajStudenta(const QString& ime, const QString& prezime, const QString& jmbg,
                           const QString& in, const QString& fa, const QString& sm,const QString& sl){
     const int newRow = m_model->rowCount();
     Osoba *o = new Osoba(ime,prezime,jmbg);
     const Student  noviStudent(*o,in,fa,sm,sl);
     m_model->insertRow(newRow);
     m_model->setData(m_model->index(newRow,0),ime,studentViewModel::studentViewModel_Roles::ime);
     //m_model->setData(m_model->index(newRow,0),QVariant::fromValue(noviStudent),Qt::EditRole);
 }
Q_SLOT void izbrisiStudenta();
*/
