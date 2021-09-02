#ifndef KONTROLER_H
#define KONTROLER_H
#include "source/Proxy/studentproxy.h"
#include <QObject>

class Kontroler : public QObject
{
public:
    Q_OBJECT
public:
    Kontroler();
    StudentLista * Model();
    StudentProxy * Proxy();
public slots:
    void dodavanje(const QString& ime, const QString& prezime, const QString& jmbg,
               const QString& in, const QString& fa, const QString& sm,const QString& sl);
    void brisanje(int indeks);
signals:
    void dodaj(const QString& ime, const QString& prezime, const QString& jmbg,
               const QString& in, const QString& fa, const QString& sm,const QString& sl);
    void obrisi(int indeks);
private:
    StudentLista * listaStudenata= new StudentLista();
    StudentProxy * listaStudenataProxy = new StudentProxy();
};


#endif // KONTROLER_H
