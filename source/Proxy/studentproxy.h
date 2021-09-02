#ifndef STUDENTPROXY_H
#define STUDENTPROXY_H
#include <QSortFilterProxyModel>
#include "source/Modeli/studentlista.h"


class StudentProxy:public QSortFilterProxyModel
{
    Q_OBJECT
public:
    StudentProxy(QObject* parent=nullptr);
    Q_INVOKABLE void setFilter(int noviFilter);
    Q_INVOKABLE void setPojamPretrage(QString pojam);
    Q_INVOKABLE void ponistiPretragu();
public slots:
    bool filterAcceptsRow(int source_row, const QModelIndex &source_parent)const override;
private:
    int _filter=10;
    QString pojamPretrage="";
};
#endif // STUDENTPROXY_H
