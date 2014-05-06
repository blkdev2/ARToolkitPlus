################################
#
# QMake definitions for simple example
#

ARTKP = $${_PRO_FILE_PWD_}/../../

unix:!macx {
  include ($${ARTKP}/build/linux/options.pro)
}

macx {
  include ($${ARTKP}/build/osx/options.pro)
}

TEMPLATE = app

TARGET   = multi

QMAKE_CLEAN = $${ARTKP}/bin/multi

LIBS += -L$${ARTKP}/lib -lARToolKitPlus

debug {
  OBJECTS_DIR     = $${ARTKP}/sample/multi/build/linux/debug
}

release {
  OBJECTS_DIR     = $${ARTKP}/sample/multi/build/linux/release
}


DESTDIR  = $${ARTKP}/bin

debug {
  message("Building multi in debug mode ...")
}

release {
  message("Building multi in release mode ...")
}

SOURCES = src/main.cpp

target.path = ""/$$PREFIX/bin
INSTALLS += target

################################
