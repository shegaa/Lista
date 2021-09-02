#include "source/Modeli/studentlista.h"
QHash<int,QByteArray> StudentLista::roleNames()const{
       QHash<int, QByteArray> roles;
       roles[StudentLista::ime] = "role_ime";
       roles[StudentLista::prezime] = "role_prezime";
       roles[StudentLista::jmbg] = "role_jmbg";
       roles[StudentLista::indeks] = "role_indeks";
       roles[StudentLista::fakultet] = "role_faks";
       roles[StudentLista::smijer] = "role_smijer";
       roles[StudentLista::slika] = "role_slika";
       return roles;
   }
StudentLista::StudentLista(){
    /*Osoba* o1=new Osoba("ime1","prezime1","jmbg1");
    Osoba* o2=new Osoba("ime2","prezime2","jmbg2");
    Osoba* o3=new Osoba("ime3","prezime3","jmbg3");
    Student* st1= new Student(*o1,"indeks1","faks1","smijer1","prvaslika.jpg");
    Student* st2= new Student(*o2,"indeks2","faks2","smijer2","drugaslika.jpg");
    Student* st3= new Student(*o3,"indeks3","faks3","smijer3","trecaslika.jpg");*/

    //int i=_listaStudenata.size();
    //QModelIndex ind=createIndex(i,0);
    //Student * stud= new Student(Osoba(ime,prezime,jmbg),in,fa,sm,sl);
    //beginInsertRows(ind,i,i);
    //setData(index(ind.row(),0),"ime",StudentLista_Roles::ime);
    /*QModelIndex ind2=createIndex(0,1);
    setData(index(ind2.row(),1),"prezime",StudentLista_Roles::prezime);
    QModelIndex ind3=createIndex(0,2);
    setData(index(ind3.row(),2),"jmbg",StudentLista_Roles::jmbg);
    QModelIndex ind4=createIndex(0,3);
    setData(index(ind4.row(),3),"in",StudentLista_Roles::indeks);
    QModelIndex ind5=createIndex(0,4);
    setData(index(ind5.row(),4),"fa",StudentLista_Roles::fakultet);
    QModelIndex ind6=createIndex(0,5);
    setData(index(ind6.row(),5),"sm",StudentLista_Roles::smijer);
    QModelIndex ind7=createIndex(0,6);
    setData(index(ind7.row(),6),"prvaslika.jpg",StudentLista_Roles::slika);*/

    //emit listaPromjenjena(_listaStudenata);
    //_listaStudenata.append(st1);
    dodajStudenta("Jovana","Jovic","jmbg1","111","pravo","smijer1","slike/prvaslika.jpg");
    //_listaStudenata.append(st2);
    dodajStudenta("Marko","Maric","jmbg2","222","polj","smijer2","slike/drugaslika.jpg");
    //_listaStudenata.append(st3);
    dodajStudenta("Ivan","Ivic","jmbg3","333","ftn","smijer3","slike/trecaslika.jpg");
    //endInsertRows();
}
int StudentLista::rowCount(const QModelIndex &parent)const{
    Q_UNUSED(parent);
    return _listaStudenata.size();
}
QVariant StudentLista::data(const QModelIndex &index, int role)const{
    /*if (!index.isValid())
            return QVariant();*/
        if (index.row() >= _listaStudenata.size() || index.row() < 0){
            return QVariant();}
        //Q_UNUSED(role);
        //if (role == Qt::DisplayRole) {
            const Student * student = _listaStudenata[index.row()];
            const Osoba  osoba = student->o();
            switch (role) {
            case ime:
                return osoba.ime();
            case prezime:
                return osoba.prezime();
            case jmbg:
                return osoba.jmbg();
            case indeks:
                return student->indeks();
            case fakultet:
                return student->faks();
            case smijer:
                return student->smijer();
            case slika:
                return student->slika();
            default:
                return QVariant();
            }
        //}
        return QVariant();
}
void StudentLista::dodajStudenta(const QString& ime, const QString& prezime, const QString& jmbg,
                          const QString& indeks, const QString& faks, const QString& smijer,const QString& slika){
    /*QStandardItemModel* m_model = new QStandardItemModel;
    const int newRow = m_model->rowCount();
    Osoba *o = new Osoba(ime,prezime,jmbg);
    const Student  noviStudent(*o,in,fa,sm,sl);
    m_model->insertRow(newRow);
    m_model->setData(m_model->index(newRow,0),ime,StudentLista::StudentLista_Roles::ime);
    //m_model->setData(m_model->index(newRow,0),QVariant::fromValue(noviStudent),Qt::EditRole);*/
    int i=_listaStudenata.size();
    Osoba * novaOsoba = new Osoba(ime,prezime,jmbg);
    Student * noviStudent = new Student(*novaOsoba,indeks,faks,smijer,slika);
    //QModelIndex ind=createIndex(i,0);
    //Student * stud= new Student(Osoba(ime,prezime,jmbg),in,fa,sm,sl);
    //beginInsertRows(ind,i,i);
    beginInsertRows(QModelIndex(),i,i);
    /*setData(index(ind.row(),0),ime,StudentLista_Roles::ime);
    setData(index(ind.row(),1),prezime,StudentLista_Roles::prezime);
    setData(index(ind.row(),2),jmbg,StudentLista_Roles::jmbg);
    setData(index(ind.row(),3),in,StudentLista_Roles::indeks);
    setData(index(ind.row(),4),fa,StudentLista_Roles::fakultet);
    setData(index(ind.row(),5),sm,StudentLista_Roles::smijer);
    setData(index(ind.row(),6),sl,StudentLista_Roles::slika);*/

    _listaStudenata.append(noviStudent);
    emit listaPromjenjena(_listaStudenata);
    endInsertRows();
}

bool StudentLista::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if (index.isValid() /*&& role == Qt::EditRole*/) {
        Student * student = _listaStudenata[index.row()];
        switch (role) {
        case 0:
            student->setIme(value.toString());
            Q_EMIT dataChanged(index,index,{ime});
            return true;
        case 1:
            student->setPrezime(value.toString());
            Q_EMIT dataChanged(index,index,{prezime});
            return true;
        case 2:
            student->setJmbg(value.toString());
            Q_EMIT dataChanged(index,index,{jmbg});
            return true;
        case 3:
            student->setIndeks(value.toString());
            Q_EMIT dataChanged(index,index,{indeks});
            return true;
        case 4:
            student->setFaks(value.toString());
            Q_EMIT dataChanged(index,index,{fakultet});
            return true;
        case 5:
            student->setSmijer(value.toString());
            Q_EMIT dataChanged(index,index,{smijer});
            return true;
        case 6:
            student->setSlika(value.toString());
            Q_EMIT dataChanged(index,index,{slika});
            return true;
        default:
            return false;
            _listaStudenata.append(student);
            //emit dataChanged(index, index);
        }

        return false;
}}
void StudentLista::obrisiStudenta(int indeks){
    /*for (int i=0;i<=_listaStudenata.count();i++){
        if(_listaStudenata[i]->indeks()==ind){*/
            QModelIndex nadjeniIndeks = this->index(indeks,0);
            beginRemoveRows(nadjeniIndeks,indeks,indeks);//?
            _listaStudenata.removeAt(indeks);
            endRemoveRows();
            this->layoutChanged();
            //return;
        //}
    //}
}
QList<Student*> & StudentLista::getListaStudenata(){
    return _listaStudenata;
}
//Q_SLOT void izbrisiStudenta();
