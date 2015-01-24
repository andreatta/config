import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "MultimediaQuick_p"
    Depends { name: "Qt"; submodules: ["core", "quick", "multimedia-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/can/Qt-android/5.4/android_armv7/lib/libQt5Quick.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Multimedia.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Gui.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Qml.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Network.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Core.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5MultimediaQuick_p"
    libNameForLinkerRelease: "Qt5MultimediaQuick_p"
    libFilePathDebug: ""
    libFilePathRelease: "/home/can/Qt-android/5.4/android_armv7/lib/libQt5MultimediaQuick_p.so"
    cpp.defines: ["QT_QTMULTIMEDIAQUICKTOOLS_LIB"]
    cpp.includePaths: ["/home/can/Qt-android/5.4/android_armv7/include", "/home/can/Qt-android/5.4/android_armv7/include/QtMultimediaQuick_p", "/home/can/Qt-android/5.4/android_armv7/include/QtMultimediaQuick_p/5.4.0", "/home/can/Qt-android/5.4/android_armv7/include/QtMultimediaQuick_p/5.4.0/QtMultimediaQuick_p"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a", "/opt/android/ndk/platforms/android-9/arch-arm//usr/lib", "/home/can/Qt-android/5.4/android_armv7/lib", "/home/can/Qt-android/5.4/android_armv7/lib", "/home/can/Qt-android/5.4/android_armv7/lib"]
    
}
