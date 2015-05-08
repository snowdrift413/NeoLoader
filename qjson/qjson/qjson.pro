# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = lib
TARGET = qjson
QT += core

DEFINES += QT_LARGEFILE_SUPPORT QJSON_LIB QJSON_MAKEDLL

Release: {
#CONFIG += release
DESTDIR = ../../Release
DESTDIR = ../../Release
OBJECTS_DIR += ../../Release/qjson.obj
MOC_DIR += ../../Release/qjson.moc
UI_DIR += ../../Release/qjson.moc
RCC_DIR += ../../Release/qjson.moc
}

Debug: {
#CONFIG += debug
DESTDIR = ../../Debug
DESTDIR = ../../Debug
OBJECTS_DIR += ../../Debug/qjson.obj
MOC_DIR += ../../Debug/qjson.moc
UI_DIR += ../../Debug/qjson.moc
RCC_DIR += ../../Debug/qjson.moc
}

INCLUDEPATH += .
DEPENDPATH += .

HEADERS += ../src/json_parser.hh \
           ../src/json_scanner.h \
           ../src/location.hh \
           ../src/parser.h \
           ../src/parser_p.h \
           ../src/parserrunnable.h \
           ../src/position.hh \
           ../src/qjson_debug.h \
           ../src/qjson_export.h \
           ../src/qobjecthelper.h \
           ../src/serializer.h \
           ../src/serializerrunnable.h \
           ../src/stack.hh
SOURCES += ../src/json_parser.cc \
           ../src/json_scanner.cpp \
           ../src/parser.cpp \
           ../src/parserrunnable.cpp \
           ../src/qobjecthelper.cpp \
           ../src/serializer.cpp \
           ../src/serializerrunnable.cpp
           
