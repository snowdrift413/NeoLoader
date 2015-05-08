# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = lib
TARGET = DHT
QT += core network
DEFINES += QT_LARGEFILE_SUPPORT DHT_LIB QT_NETWORK_LIB USING_QT
!mac:!win32:QMAKE_CXXFLAGS += -std=c++0x
!win32:QMAKE_CXXFLAGS += -w
!mac:unix:QMAKE_LFLAGS += -Wl,-rpath,'\$\$ORIGIN'
mac:QMAKE_CXXFLAGS += -std=c++11

!win32:QMAKE_LFLAGS +=-rdynamic

CONFIG(release, debug|release):{
QMAKE_CXXFLAGS_RELEASE = $$QMAKE_CFLAGS_RELEASE_WITH_DEBUGINFO
QMAKE_LFLAGS_RELEASE = $$QMAKE_LFLAGS_RELEASE_WITH_DEBUGINFO
}
CONFIG(debug, debug|release):DESTDIR = ../Debug
CONFIG(release, debug|release):DESTDIR = ../Release
INCLUDEPATH += .
DEPENDPATH += .
#MOC_DIR += ./GeneratedFiles
#OBJECTS_DIR += ./ObjectFiles
#UI_DIR += ./GeneratedFiles
#RCC_DIR += ./GeneratedFiles

win32:{
CONFIG(debug, debug|release):LIBS += \
    -L../Debug/
CONFIG(release, debug|release):LIBS += \
    -L../Release/
LIBS += -lNeoHelper
LIBS += -lWs2_32
}

!win32:{
CONFIG(debug, debug|release):LIBS += \
    -L$$OUT_PWD/../Debug/
CONFIG(release, debug|release):LIBS += \
    -L$$OUT_PWD/../Release/
LIBS += -lNeoHelper
}

CONFIG += precompile_header
PRECOMPILED_HEADER = pch.h

include(DHT.pri)
