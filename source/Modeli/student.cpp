#include "source/Modeli/student.h"

Student::Student(const Osoba& os,const QString& in,const QString& fa,const QString& sm,const QString& sl)
{
    this->m_o = os;
    this->m_indeks = in;
    this->m_faks = fa;
    this->m_smijer = sm;
    this->m_slika = sl;
}

Student::Student(){

}

const QString& Student::indeks() const{
    return m_indeks;
}
const QString& Student::faks() const{
    return m_faks;
}
const QString& Student::smijer() const{
    return m_smijer;
}
const QString& Student::slika() const{
    return m_slika;
}
const Osoba& Student::o()const{
    return m_o;
}
void Student::setIndeks(const QString& indeks){
    m_indeks= indeks;
}
void Student::setFaks(const QString& faks){
    m_faks= faks;
}
void Student::setSmijer(const QString& smijer){
    m_smijer= smijer;
}
void Student::setSlika(const QString& slika){
    m_slika= slika;
}
void Student::setOsoba(const Osoba &o){
    m_o = o;
}
