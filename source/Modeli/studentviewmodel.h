/*#ifndef STUDENTVIEWMODEL_H
#define STUDENTVIEWMODEL_H
#include <QStandardItemModel>
#include <QObject>
#include <student.h>

class studentViewModel : public QStandardItemModel
{
        Q_OBJECT
    Q_PROPERTY(QList<ModelStudenta>listaStudenata NOTIFY listaPromjenjena)
public:
    enum studentViewModel_Roles{
        ime,
        prezime,
        jmbg,
        indeks,
        faks,
        smijer,
        slika
    };

            QHash<int,QByteArray> roleNames() const override;
    //studentViewModel();
    Q_SLOT void dodajStudenta(const QString& ime, const QString& prezime, const QString& jmbg,
                              const QString& in, const QString& fa, const QString& sm,const QString& sl);
    Q_SLOT void izbrisiStudenta();

            QAbstractItemModel* m_model;
};

#endif // STUDENTVIEWMODEL_H
*/
