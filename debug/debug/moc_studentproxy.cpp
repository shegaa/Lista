/****************************************************************************
** Meta object code from reading C++ file 'studentproxy.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../source/Proxy/studentproxy.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'studentproxy.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_StudentProxy_t {
    QByteArrayData data[11];
    char stringdata0[128];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_StudentProxy_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_StudentProxy_t qt_meta_stringdata_StudentProxy = {
    {
QT_MOC_LITERAL(0, 0, 12), // "StudentProxy"
QT_MOC_LITERAL(1, 13, 16), // "filterAcceptsRow"
QT_MOC_LITERAL(2, 30, 0), // ""
QT_MOC_LITERAL(3, 31, 10), // "source_row"
QT_MOC_LITERAL(4, 42, 11), // "QModelIndex"
QT_MOC_LITERAL(5, 54, 13), // "source_parent"
QT_MOC_LITERAL(6, 68, 9), // "setFilter"
QT_MOC_LITERAL(7, 78, 10), // "noviFilter"
QT_MOC_LITERAL(8, 89, 16), // "setPojamPretrage"
QT_MOC_LITERAL(9, 106, 5), // "pojam"
QT_MOC_LITERAL(10, 112, 15) // "ponistiPretragu"

    },
    "StudentProxy\0filterAcceptsRow\0\0"
    "source_row\0QModelIndex\0source_parent\0"
    "setFilter\0noviFilter\0setPojamPretrage\0"
    "pojam\0ponistiPretragu"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_StudentProxy[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    2,   34,    2, 0x0a /* Public */,

 // methods: name, argc, parameters, tag, flags
       6,    1,   39,    2, 0x02 /* Public */,
       8,    1,   42,    2, 0x02 /* Public */,
      10,    0,   45,    2, 0x02 /* Public */,

 // slots: parameters
    QMetaType::Bool, QMetaType::Int, 0x80000000 | 4,    3,    5,

 // methods: parameters
    QMetaType::Void, QMetaType::Int,    7,
    QMetaType::Void, QMetaType::QString,    9,
    QMetaType::Void,

       0        // eod
};

void StudentProxy::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<StudentProxy *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: { bool _r = _t->filterAcceptsRow((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< const QModelIndex(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 1: _t->setFilter((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->setPojamPretrage((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 3: _t->ponistiPretragu(); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject StudentProxy::staticMetaObject = { {
    QMetaObject::SuperData::link<QSortFilterProxyModel::staticMetaObject>(),
    qt_meta_stringdata_StudentProxy.data,
    qt_meta_data_StudentProxy,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *StudentProxy::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *StudentProxy::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_StudentProxy.stringdata0))
        return static_cast<void*>(this);
    return QSortFilterProxyModel::qt_metacast(_clname);
}

int StudentProxy::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QSortFilterProxyModel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
