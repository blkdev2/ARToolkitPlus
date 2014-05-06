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

TARGET   = simple

QMAKE_CLEAN = $${ARTKP}/bin/simple

LIBS += -L$${ARTKP}/lib -lARToolKitPlus

DESTDIR  = $${ARTKP}/bin

debug {
  message("Building simple in debug mode ...")
}

release {
  message("Building simple in release mode ...")
}

SOURCES = src/main.cpp

target.path = ""/$$PREFIX/bin
INSTALLS += target

################################
