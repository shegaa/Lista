/*#ifndef MODELSTUDENTA_H
#define MODELSTUDENTA_H
#include <QStandardItemModel>
#include <student.h>
#include <studentviewmodel.h>


class ModelStudenta : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QAbstractItemModel* model READ model)
    Q_DISABLE_COPY(ModelStudenta)
public:
    explicit ModelStudenta(QObject* parent = Q_NULLPTR);

    Q_SLOT void dodajStudenta(const QString& ime, const QString& prezime, const QString& jmbg,
                              const QString& in, const QString& fa, const QString& sm,const QString& sl);
    Q_SLOT void izbrisiStudenta();
    //Q_SLOT void obrisiRed(QString jmbg);
    Q_SLOT void obrisiRed(int red);
    QAbstractItemModel* model() const;
private:
    void popuniModel();
    QAbstractItemModel* m_model;
    Osoba os;
};

#endif // MODELSTUDENTA_H
*/
