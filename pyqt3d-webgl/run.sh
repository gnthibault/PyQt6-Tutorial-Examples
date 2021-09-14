#!/bin/bash


# You will need (in order)

# git@github.com:qt/qtbase.git
# build with cmake

# git@github.com:qt/qtshadertools.git
# Build with export Qt6CoreTools_DIR=/usr/local/Qt-6.2.0/lib/cmake/Qt6CoreTools/; export Qt6_DIR=/usr/local/Qt-6.2.0/; cmake ../../qtshadertools

# git@github.com:qt/qtdeclarative.git
# build with export Qt6CoreTools_DIR=/usr/local/Qt-6.2.0/lib/cmake/Qt6CoreTools/; export Qt6_DIR=/usr/local/Qt-6.2.0/; cmake ../../qtdeclarative/

# git@github.com:qt/qt3d.git
# build with export Qt6CoreTools_DIR=/usr/local/Qt-6.2.0/lib/cmake/Qt6CoreTools/; export Qt6_DIR=/usr/local/Qt-6.2.0/; cmake ../../qt3d
# or /usr/local/Qt-6.2.0/bin/qmake ../../qtwebsockets/ # best solution

# git@github.com:qt/qtwebsockets.git
# build with export Qt6CoreTools_DIR=/usr/local/Qt-6.2.0/lib/cmake/Qt6CoreTools/; export Qt6_DIR=/usr/local/Qt-6.2.0/; cmake ../../qtwebsockets/
# or /usr/local/Qt-6.2.0/bin/qmake ../../qt3d/ # best solution

# https://github.com/qt/qtwebglplugin
# build with /usr/local/Qt-6.2.0/bin/qmake ../../qtwebglplugin/


# preferably all at tag >=6.2.0

# First, make sure you have webgl plugin in /usr/local/Qt-6.2.0/plugins/platforms/
# otherwise, you'll see something like:
# qt.qpa.plugin: Could not find the Qt platform plugin "webgl" in ""
# This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
# Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.



export QSG_INFO=1
export QT_QPA_EGLFS_DEBUG=1
export QT_LOGGING_RULES=qt.qpa.*=true
QT_QPA_PLATFORM=webgl:port=8998 python ../pyqt3d/test.py
