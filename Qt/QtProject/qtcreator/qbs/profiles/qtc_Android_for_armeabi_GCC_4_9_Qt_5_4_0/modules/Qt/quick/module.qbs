import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Quick"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/can/Qt-android/5.4/android_armv5/lib/libQt5Gui.so", "/home/can/Qt-android/5.4/android_armv5/lib/libQt5Qml.so", "/home/can/Qt-android/5.4/android_armv5/lib/libQt5Network.so", "/home/can/Qt-android/5.4/android_armv5/lib/libQt5Core.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Quick"
    libNameForLinkerRelease: "Qt5Quick"
    libFilePathDebug: ""
    libFilePathRelease: "/home/can/Qt-android/5.4/android_armv5/lib/libQt5Quick.so"
    cpp.defines: {
        var result = ["QT_QUICK_LIB"];
        if (qmlDebugging)
            result.push("QT_QML_DEBUG");
        return result;
    }
    cpp.includePaths: ["/home/can/Qt-android/5.4/android_armv5/include", "/home/can/Qt-android/5.4/android_armv5/include/QtQuick"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi", "/opt/android/ndk/platforms/android-9/arch-arm//usr/lib", "/home/can/Qt-android/5.4/android_armv5/lib", "/home/can/Qt-android/5.4/android_armv5/lib"]
    property bool qmlDebugging: false
    property string qmlPath
    property string qmlImportsPath: ""
}
