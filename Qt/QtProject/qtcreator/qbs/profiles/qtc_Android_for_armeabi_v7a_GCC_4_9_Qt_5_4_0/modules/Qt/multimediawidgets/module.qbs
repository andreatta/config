import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "MultimediaWidgets"
    Depends { name: "Qt"; submodules: ["core", "gui", "multimedia", "widgets"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/can/Qt-android/5.4/android_armv7/lib/libQt5Multimedia.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Widgets.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Gui.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Network.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Core.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5MultimediaWidgets"
    libNameForLinkerRelease: "Qt5MultimediaWidgets"
    libFilePathDebug: ""
    libFilePathRelease: "/home/can/Qt-android/5.4/android_armv7/lib/libQt5MultimediaWidgets.so"
    cpp.defines: ["QT_MULTIMEDIAWIDGETS_LIB"]
    cpp.includePaths: ["/home/can/Qt-android/5.4/android_armv7/include", "/home/can/Qt-android/5.4/android_armv7/include/QtMultimediaWidgets"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a", "/opt/android/ndk/platforms/android-9/arch-arm//usr/lib", "/home/can/Qt-android/5.4/android_armv7/lib", "/home/can/Qt-android/5.4/android_armv7/lib"]
    
}
