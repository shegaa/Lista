QT += quick
QT += widgets
#win32:INCLUDEPATH += %%quote("C:\Users\Sergej\Desktop\New folder\lista\source\Kontroleri\include")
#win32:INCLUDEPATH += "..\qml-source"
#INCLUDEPATH += %%system(pwd)\source\Kontroleri\include
INCLUDEPATH += $$PWD


CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        #kontroler.cpp \
        main.cpp \
        #modelstudenta.cpp \
        #osoba.cpp \
        source/Kontroleri/kontroler.cpp \
        source/Modeli/osoba.cpp \
        source/Modeli/student.cpp \
        source/Modeli/studentlista.cpp \
        source/Proxy/studentproxy.cpp
        #student.cpp \
        #studentlista.cpp \
        #studentproxy.cpp \
        #studentviewmodel.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    #kontroler.h \
    #modelstudenta.h \
    #osoba.h \
    source/Kontroleri/kontroler.h \
    source/Modeli/osoba.h \
    source/Modeli/student.h \
    source/Modeli/studentlista.h \
    source/Proxy/studentproxy.h
    #student.h \
    #studentlista.h \
    #studentproxy.h \
    #studentviewmodel.h

DISTFILES += \
    CustomButton.qml \
    Del.qml \
    qml-source/Komponente/Del.qml \
    slike/cetvrtaslika.jpg \
    slike/circle-png.png \
    slike/drugaslika.jpg \
    slike/petaslika.jpg \
    slike/prazno.png \
    slike/prvaslika.jpg \
    slike/sudnjerbobClicked.png \
    slike/sundjerbob.png \
    slike/sundjerbobClicked.png \
    slike/trecaslika.jpg
