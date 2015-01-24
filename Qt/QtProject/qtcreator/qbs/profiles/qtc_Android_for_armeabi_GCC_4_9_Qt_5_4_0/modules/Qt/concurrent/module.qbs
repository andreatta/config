import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Concurrent"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/can/Qt-android/5.4/android_armv5/lib/libQt5Core.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Concurrent"
    libNameForLinkerRelease: "Qt5Concurrent"
    libFilePathDebug: ""
    libFilePathRelease: "/home/can/Qt-android/5.4/android_armv5/lib/libQt5Concurrent.so"
    cpp.defines: ["QT_CONCURRENT_LIB"]
    cpp.includePaths: ["/home/can/Qt-android/5.4/android_armv5/include", "/home/can/Qt-android/5.4/android_armv5/include/QtConcurrent"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi", "/opt/android/ndk/platforms/android-9/arch-arm//usr/lib", "/home/can/Qt-android/5.4/android_armv5/lib"]
    
}
