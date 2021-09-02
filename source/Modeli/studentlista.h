#ifndef STUDENTLISTA_H
#define STUDENTLISTA_H
#include <QStandardItemModel>
#include "source/Modeli/student.h"

class StudentLista : public QAbstractListModel
{
        Q_OBJECT
    Q_PROPERTY(QList<Student*>listaStudenata READ getListaStudenata() NOTIFY listaPromjenjena)

public:
    enum StudentLista_Roles{
        ime,
        prezime,
        jmbg,
        indeks,
        fakultet,
        smijer,
        slika
    };

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole)const override;
    StudentLista();
    QHash<int,QByteArray> roleNames() const override;
    Q_INVOKABLE void dodajStudenta(const QString& ime, const QString& prezime, const QString& jmbg,
                              const QString& in, const QString& fa, const QString& sm,const QString& sl);
    bool setData(const QModelIndex & index, const QVariant &value,int role = Qt::EditRole) override;
    Q_INVOKABLE void obrisiStudenta(int indeks);
    QList<Student*> &getListaStudenata();


    QList<Student*> _listaStudenata;
signals:
    void listaPromjenjena(QList<Student*> listaStudenata);
};
#endif // STUDENTLISTA_H
