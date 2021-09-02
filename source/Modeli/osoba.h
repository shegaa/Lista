#ifndef OSOBA_H
#define OSOBA_H
#include <QString>
#include <QAbstractItemModel>
#include <QObject>

class Osoba//mogla je biti i apstraktna klasa ali bih imao problem onda u modelstudenta
{
    Q_GADGET
    Q_PROPERTY(QString ime READ ime WRITE setIme)
    Q_PROPERTY(QString prezime READ prezime WRITE setPrezime)
    Q_PROPERTY(QString jmbg READ jmbg WRITE setJmbg)
public:
    Osoba();
    Osoba(const QString& ime, const QString& prezime, const QString& jmbg);
    const QString& ime() const;
    const QString& prezime() const;
    const QString& jmbg()const;
    void setIme(const QString& ime);
    void setPrezime(const QString& prezime);
    void setJmbg(const QString& jmbg);
private:
    QString m_ime;
    QString m_prezime;
    QString m_jmbg;
};
Q_DECLARE_METATYPE(Osoba)
#endif // OSOBA_H
