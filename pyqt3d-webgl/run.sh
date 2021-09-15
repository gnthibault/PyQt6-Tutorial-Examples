#!/bin/bash


# You will need (in order)

# Download vulkan on https://vulkan.lunarg.com/sdk/home
# Build with Vulkan (Vulkan itself just need to be untared into /opt/Vulkan for instance):
# sudo apt install libglm-dev cmake libxcb-dri3-0 libxcb-present0 libpciaccess0 \
# libpng-dev libxcb-keysyms1-dev libxcb-dri3-dev libx11-dev g++ gcc g++-multilib \
# libmirclient-dev libwayland-dev libxrandr-dev libxcb-randr0-dev libxcb-ewmh-dev \
# git python3 bison libx11-xcb-dev liblz4-dev libzstd-dev python3-distutils qt5-default
# Minimum CMake 3.10.2 version is required.
# source /path_to_vulkan/1.x.yy.z/setup-env.sh


# For QT 5.15.1 - QtWebGLPlugin 6.2.0


# git@github.com:qt/qtbase.git
# build with ./configure, then cmake


# git@github.com:qt/qt3d.git
# build with export Qt6CoreTools_DIR=/usr/local/Qt-6.2.0/lib/cmake/Qt6CoreTools/; export Qt6_DIR=/usr/local/Qt-6.2.0/; cmake ../../qt3d
# or /usr/local/Qt-6.2.0/bin/qmake ../../qtwebsockets/ # best solution

# git@github.com:qt/qtwebsockets.git
# build with export Qt6CoreTools_DIR=/usr/local/Qt-6.2.0/lib/cmake/Qt6CoreTools/; export Qt6_DIR=/usr/local/Qt-6.2.0/; cmake ../../qtwebsockets/
# or /usr/local/Qt-6.2.0/bin/qmake ../../qt3d/ # best solution

# https://github.com/qt/qtwebglplugin
# build with /usr/local/Qt-6.2.0/bin/qmake ../../qtwebglplugin/

# For QT 6.2.0 - QtWebGLPlugin ???? you can add the followings (not even sure if useful...)

# git@github.com:qt/qtshadertools.git
# Build with export Qt6CoreTools_DIR=/usr/local/Qt-6.2.0/lib/cmake/Qt6CoreTools/; export Qt6_DIR=/usr/local/Qt-6.2.0/; cmake ../../qtshadertools

# git@github.com:qt/qtdeclarative.git
# build with export Qt6CoreTools_DIR=/usr/local/Qt-6.2.0/lib/cmake/Qt6CoreTools/; export Qt6_DIR=/usr/local/Qt-6.2.0/; cmake ../../qtdeclarative/


# First, make sure you have webgl plugin in /usr/local/Qt-6.2.0/plugins/platforms/
# otherwise, you'll see something like:
# qt.qpa.plugin: Could not find the Qt platform plugin "webgl" in ""
# This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
# Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.



export QSG_INFO=1
export QT_QPA_EGLFS_DEBUG=1
export QT_LOGGING_RULES=qt.qpa.*=true
QT_QPA_PLATFORM=webgl:port=8998 python ../pyqt3d/testQt5.py
