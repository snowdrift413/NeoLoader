# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = lib
TARGET = qtping
QT += core network
DEFINES += QT_LARGEFILE_SUPPORT QTPING_LIB QT_NETWORK_LIB
!mac:!win32:QMAKE_CXXFLAGS += -std=c++0x
!win32:QMAKE_CXXFLAGS += -w



CONFIG(release, debug|release):{
QMAKE_CXXFLAGS_RELEASE = $$QMAKE_CFLAGS_RELEASE_WITH_DEBUGINFO
QMAKE_LFLAGS_RELEASE = $$QMAKE_LFLAGS_RELEASE_WITH_DEBUGINFO
}
CONFIG(debug, debug|release):DESTDIR = Debug
CONFIG(release, debug|release):DESTDIR = Release
INCLUDEPATH += .
DEPENDPATH += .
#MOC_DIR += ./GeneratedFiles
#OBJECTS_DIR += ./ObjectFiles
#UI_DIR += ./GeneratedFiles
#RCC_DIR += ./GeneratedFiles


include(qtping.pri)
