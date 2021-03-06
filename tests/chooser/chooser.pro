### eqmake4 was here ###
CONFIG -= debug_and_release debug
CONFIG += release

TEMPLATE = app
TARGET = chooser
MOC_DIR = .moc
OBJECTS_DIR = .obj
MGEN_OUTDIR = .gen
LIBS += -L$$PREFIX/lib
INCLUDEPATH += $$PREFIX/include
CONFIG += meegotouch mobility qt  link_pkgconfig
PKGCONFIG += meegotouch 
MOBILITY+=contacts
LIBS += -lseaside
HEADERS += \
    chooser.h
SOURCES = \
    chooser.cpp

M_THEME_DIR = $$PREFIX/share/themes/base/meegotouch
CHOOSER_THEME_DIR = $$M_THEME_DIR/$$TARGET

theme.files = theme/*
theme.path = $$CHOOSER_THEME_DIR
theme.CONFIG += no_check_exist

INSTALLS += \
    theme

OTHER_FILES += \
    theme/style/chooser.css \
    theme/chooser.conf \

