#include "source/Kontroleri/kontroler.h"

Kontroler::Kontroler()
{
    listaStudenataProxy->setSourceModel(listaStudenata);
    //mod->setDynamicSortFilter(true);
    connect(this,SIGNAL(dodaj(const QString&, const QString&, const QString&,
                              const QString&, const QString&, const QString&,const QString&)),
            this,SLOT(dodavanje(const QString&, const QString&, const QString&,
                                const QString&, const QString&, const QString&,const QString&)),Qt::QueuedConnection);
    connect(this,SIGNAL(obrisi(int)),this,SLOT(brisanje(int)),Qt::QueuedConnection);
}
StudentLista * Kontroler::Model(){
    return listaStudenata;
}
StudentProxy * Kontroler::Proxy(){
    return listaStudenataProxy;
}
void Kontroler::dodavanje(const QString& ime, const QString& prezime, const QString& jmbg,
                          const QString& in, const QString& fa, const QString& sm,const QString& sl){
    listaStudenata->dodajStudenta(ime,prezime,jmbg,in,fa,sm,sl);
}
void Kontroler::brisanje(int indeks){
    listaStudenata->obrisiStudenta(indeks);
}
