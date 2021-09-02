#include "source/Proxy/studentproxy.h"

StudentProxy::StudentProxy(QObject* parent)
{
}

void StudentProxy::setFilter(int noviFilter){
    //_filter=noviFilter;//nepotrebno
    /*if(noviFilter==10){
        this->invalidateFilter();
        return;
    }*/
    setFilterRole(noviFilter);//nije invokable, nisam mogao pozvati iz qml
}
void StudentProxy::setPojamPretrage(QString pojam){
    pojamPretrage=pojam;
    this->setFilterCaseSensitivity(Qt::CaseInsensitive);
    this->setFilterFixedString(pojam);
}
void StudentProxy::ponistiPretragu(){
    //_filter=10;//mislim da je moglo i bez ovoga
    pojamPretrage="";
    this->invalidateFilter();
}
bool StudentProxy::filterAcceptsRow(int source_row, const QModelIndex &source_parent) const
{
    //sourceModel()->index(source_row,0,source_parent).data(StudentLista::StudentLista_Roles::ime).toString();
    return sourceModel()->index(source_row,0,source_parent).data(StudentLista::StudentLista_Roles::fakultet).toString().contains(filterRegExp())||
            sourceModel()->index(source_row,0,source_parent).data(StudentLista::StudentLista_Roles::ime).toString().contains(filterRegExp())||
            sourceModel()->index(source_row,0,source_parent).data(StudentLista::StudentLista_Roles::indeks).toString().contains(filterRegExp())||
            sourceModel()->index(source_row,0,source_parent).data(StudentLista::StudentLista_Roles::jmbg).toString().contains(filterRegExp())||
            sourceModel()->index(source_row,0,source_parent).data(StudentLista::StudentLista_Roles::prezime).toString().contains(filterRegExp())||
            sourceModel()->index(source_row,0,source_parent).data(StudentLista::StudentLista_Roles::smijer).toString().contains(filterRegExp());//jednostavnije je ovdje postaviti toUpper nego mijenjati Capitalization samo kad se po indeksu pretrazuje(indeks je allUppercase dok su svi ostali capitalized)
}
