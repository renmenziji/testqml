QT += widgets
QT += qml
QT +=

HEADERS       = finddialog.h \
    dlgrenwu.h \
    dlgbiji.h \
    cplusplusclass.h
SOURCES       = finddialog.cpp \
                main.cpp \
    dlgrenwu.cpp \
    dlgbiji.cpp \
    cplusplusclass.cpp

# install
target.path = $$[QT_INSTALL_EXAMPLES]/widgets/dialogs/extension
INSTALLS += target

FORMS += \
    dlgrenwu.ui \
    dlgbiji.ui

DISTFILES += \
    main.qml \
    DlgQuickuiForm.ui.qml \
    DlgQuickui.qml

RESOURCES += \
    qrc1.qrc
