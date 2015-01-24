import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Bootstrap"
    Depends { name: "Qt"; submodules: []}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["pthread"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Bootstrap"
    libNameForLinkerRelease: "Qt5Bootstrap"
    libFilePathDebug: ""
    libFilePathRelease: "/home/can/Qt-android/5.4/android_x86/lib/libQt5Bootstrap.a"
    cpp.defines: ["QT_BOOTSTRAP_LIB", "QT_BOOTSTRAPPED", "QT_LITE_UNICODE", "QT_NO_CAST_TO_ASCII", "QT_NO_CODECS", "QT_NO_DATASTREAM", "QT_NO_LIBRARY", "QT_NO_QOBJECT", "QT_NO_SYSTEMLOCALE", "QT_NO_THREAD", "QT_NO_UNICODETABLES", "QT_NO_USING_NAMESPACE", "QT_NO_DEPRECATED", "QT_NO_TRANSLATION", "QT_QMAKE_LOCATION=\\\"/home/can/Qt-android/5.4/android_x86/qtbase/bin/qmake\\\""]
    cpp.includePaths: ["/home/can/Qt-android/5.4/android_x86/include", "/home/can/Qt-android/5.4/android_x86/include/QtCore", "/home/can/Qt-android/5.4/android_x86/include/QtXml", "/home/can/Qt-android/5.4/android_x86/include/QtCore/5.4.0", "/home/can/Qt-android/5.4/android_x86/include/QtCore/5.4.0/QtCore", "/home/can/Qt-android/5.4/android_x86/include/QtXml/5.4.0", "/home/can/Qt-android/5.4/android_x86/include/QtXml/5.4.0/QtXml"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
