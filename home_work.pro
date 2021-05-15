QT += quick qml

CONFIG += c++11

DEFINES += QT_DEPRECATED_WARNINGS

HEADERS += \
    cpp/text_read.h

SOURCES += \
        cpp/main.cpp \
        cpp/text_read.cpp

RESOURCES += \
             $$files(qml/*.qml) \
             $$files(qml/components/*.qml) \
             $$files(resources/assets/*)   \
             $$files(resources/*)   \
             qml/script.js

QML_IMPORT_PATH = 
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

