import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QmlDevTools"
    Depends { name: "Qt"; submodules: ["bootstrap-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/home/can/Qt-android/5.4/android_x86/lib/libQt5Bootstrap.a", "pthread"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5QmlDevTools"
    libNameForLinkerRelease: "Qt5QmlDevTools"
    libFilePathDebug: ""
    libFilePathRelease: "/home/can/Qt-android/5.4/android_x86/lib/libQt5QmlDevTools.a"
    cpp.defines: ["QT_QMLDEVTOOLS_LIB"]
    cpp.includePaths: ["/home/can/Qt-android/5.4/android_x86/include", "/home/can/Qt-android/5.4/android_x86/include/QtQml", "/home/can/Qt-android/5.4/android_x86/include/QtQml/5.4.0", "/home/can/Qt-android/5.4/android_x86/include/QtQml/5.4.0/QtQml"]
    cpp.libraryPaths: ["/home/can/Qt-android/5.4/android_x86/lib"]
    isStaticLibrary: true
}
