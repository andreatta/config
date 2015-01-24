import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Declarative"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets", "script"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/can/Qt-android/5.4/android_armv7/lib/libQt5Widgets.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Gui.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Script.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Sql.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5XmlPatterns.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Network.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Core.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Declarative"
    libNameForLinkerRelease: "Qt5Declarative"
    libFilePathDebug: ""
    libFilePathRelease: "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Declarative.so"
    cpp.defines: {
        var result = ["QT_DECLARATIVE_LIB"];
        if (qmlDebugging)
            result.push("QT_DECLARATIVE_DEBUG");
        return result;
    }
    cpp.includePaths: ["/home/can/Qt-android/5.4/android_armv7/include", "/home/can/Qt-android/5.4/android_armv7/include/QtDeclarative"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a", "/opt/android/ndk/platforms/android-9/arch-arm//usr/lib", "/home/can/Qt-android/5.4/android_armv7/lib", "/home/can/Qt-android/5.4/android_armv7/lib", "/home/can/Qt-android/5.4/android_armv7/lib"]
    property bool qmlDebugging: false
    property string qmlPath
    property string qmlImportsPath: ""
}
