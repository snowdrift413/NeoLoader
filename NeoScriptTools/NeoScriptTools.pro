# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = lib
TARGET = NeoScriptTools
DESTDIR = ../Win32/Debug
QT += core network script widgets gui
CONFIG += debug
DEFINES += QT_LARGEFILE_SUPPORT QT_SCRIPT_LIB NEOSCRIPTTOOLS_LIB QT_DLL QT_NETWORK_LIB QT_WIDGETS_LIB
INCLUDEPATH += . \
    ./Win32/GeneratedFiles/Debug \
    ./Win32/GeneratedFiles
LIBS += -l../Win32/Debug/qjson
DEPENDPATH += .
MOC_DIR += ./win32/GeneratedFiles/debug
OBJECTS_DIR += debug
UI_DIR += ./$(PlatformName)/GeneratedFiles
RCC_DIR += ./$(PlatformName)/GeneratedFiles
include(NeoScriptTools.pri)
