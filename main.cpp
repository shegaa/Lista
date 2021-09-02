#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "source/Modeli/student.h"
#include <QListView>
#include "source/Modeli/modelstudenta.h"
#include <QSortFilterProxyModel>
#include <QQmlContext>
#include "source/Modeli/studentlista.h"
#include "source/Proxy/studentproxy.h"
#include "source/Kontroleri/kontroler.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    /*StudentLista* st = new StudentLista();
    //StudentProxy* mod = new StudentProxy()
    StudentProxy *mod = new StudentProxy();//probao sam da stavim ovaj default qsortfilter
    mod->setSourceModel(st);
    //mod->setDynamicSortFilter(true);
    engine.rootContext()->setContextProperty("stmodel", st);
    engine.rootContext()->setContextProperty("studentL", mod);*/
    //ModelStudenta* sourceModel = new ModelStudenta();
    //engine.rootContext()->setContextProperty("modelStudenta", sourceModel);
    Kontroler * mvcKontroler= new Kontroler();
    engine.rootContext()->setContextProperty("studentModel", mvcKontroler->Model());
    engine.rootContext()->setContextProperty("studentProxy", mvcKontroler->Proxy());
    engine.rootContext()->setContextProperty("kontroler",mvcKontroler);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();


    /*QListView *listView = new QListView;
    QSortFilterProxyModel* proxyModel = new QSortFilterProxyModel();

    //proxyModel->setSourceModel(sourceModel->model());
    listView->setModel(proxyModel);*/

}
