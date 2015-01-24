import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "PlatformSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/home/can/Qt-android/5.4/android_armv7/lib/libQt5Gui.so", "/home/can/Qt-android/5.4/android_armv7/lib/libQt5Core.so", "gnustl_shared", "log", "m", "dl", "c", "gcc", "z", "EGL", "GLESv2"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5PlatformSupport"
    libNameForLinkerRelease: "Qt5PlatformSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/home/can/Qt-android/5.4/android_armv7/lib/libQt5PlatformSupport.a"
    cpp.defines: ["QT_PLATFORMSUPPORT_LIB"]
    cpp.includePaths: ["/home/can/Qt-android/5.4/android_armv7/include", "/home/can/Qt-android/5.4/android_armv7/include/QtPlatformSupport", "/home/can/Qt-android/5.4/android_armv7/include/QtPlatformSupport/5.4.0", "/home/can/Qt-android/5.4/android_armv7/include/QtPlatformSupport/5.4.0/QtPlatformSupport"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a", "/opt/android/ndk/platforms/android-9/arch-arm//usr/lib", "/home/can/Qt-android/5.4/android_armv7/lib"]
    isStaticLibrary: true
}
