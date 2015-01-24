import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebChannel"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/can/Qt-android/5.4/android_x86/lib/libQt5Qml.so", "/home/can/Qt-android/5.4/android_x86/lib/libQt5Network.so", "/home/can/Qt-android/5.4/android_x86/lib/libQt5Core.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5WebChannel"
    libNameForLinkerRelease: "Qt5WebChannel"
    libFilePathDebug: ""
    libFilePathRelease: "/home/can/Qt-android/5.4/android_x86/lib/libQt5WebChannel.so"
    cpp.defines: ["QT_WEBCHANNEL_LIB"]
    cpp.includePaths: ["/home/can/Qt-android/5.4/android_x86/include", "/home/can/Qt-android/5.4/android_x86/include/QtWebChannel"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.8/libs/x86", "/opt/android/ndk/platforms/android-9/arch-x86//usr/lib", "/home/can/Qt-android/5.4/android_x86/lib", "/home/can/Qt-android/5.4/android_x86/lib"]
    
}
