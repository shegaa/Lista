#include "source/Modeli/osoba.h"
Osoba::Osoba(){

}

/*Osoba::Osoba(QString im,QString pr,unsigned long jm)
{
    this->m_ime = im;
    this->m_prezime = pr;
    this->m_jmbg = jm;
}*/

Osoba::Osoba(const QString& ime, const QString& prezime, const QString& jmbg)
    :m_ime(ime),m_prezime(prezime),m_jmbg(jmbg){}
const QString& Osoba::ime() const{
    return m_ime;
}
const QString& Osoba::prezime() const{
    return m_prezime;
}
const QString& Osoba::jmbg() const {
    return m_jmbg;
}
void Osoba::setIme(const QString& ime){
    m_ime=ime;
}
void Osoba::setPrezime(const QString& prezime){
    m_prezime=prezime;
}
void Osoba::setJmbg(const QString& jmbg){
    m_jmbg=jmbg;
}
