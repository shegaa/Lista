#ifndef STUDENT_H
#define STUDENT_H
#include "source/Modeli/osoba.h"


class Student : public Osoba
{
    Q_GADGET
    Q_PROPERTY(QString indeks READ indeks WRITE setIndeks)
    Q_PROPERTY(QString faks READ faks WRITE setFaks)
    Q_PROPERTY(QString smijer READ smijer WRITE setSmijer)
    Q_PROPERTY(QString slika READ slika WRITE setSlika)
    Q_PROPERTY(Osoba o READ o WRITE setOsoba)
public:
    Student(const Osoba& os, const QString& in, const QString& fa, const QString& sm,const QString& sl);

    Student();

    const QString& indeks() const;
    const QString& faks() const;
    const QString& smijer() const;
    const QString& slika() const;
    const Osoba& o() const;
    void setIndeks(const QString& indeks);
    void setFaks(const QString& faks);
    void setSmijer(const QString& smijer);
    void setSlika(const QString& slika);
    void setOsoba(const Osoba& o);
 private:
    Osoba m_o;
    QString m_indeks;
    QString m_faks;
    QString m_smijer;
    QString m_slika;
};
Q_DECLARE_METATYPE(Student)
#endif // STUDENT_H
