import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "AndroidExtras"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/can/Qt-android/5.4/android_x86/lib/libQt5Core.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5AndroidExtras"
    libNameForLinkerRelease: "Qt5AndroidExtras"
    libFilePathDebug: ""
    libFilePathRelease: "/home/can/Qt-android/5.4/android_x86/lib/libQt5AndroidExtras.so"
    cpp.defines: ["QT_ANDROIDEXTRAS_LIB"]
    cpp.includePaths: ["/home/can/Qt-android/5.4/android_x86/include", "/home/can/Qt-android/5.4/android_x86/include/QtAndroidExtras"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.8/libs/x86", "/opt/android/ndk/platforms/android-9/arch-x86//usr/lib", "/home/can/Qt-android/5.4/android_x86/lib"]
    
}
