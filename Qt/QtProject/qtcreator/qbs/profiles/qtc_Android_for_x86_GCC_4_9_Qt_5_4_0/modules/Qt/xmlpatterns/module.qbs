import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "XmlPatterns"
    Depends { name: "Qt"; submodules: ["core", "network"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/can/Qt-android/5.4/android_x86/lib/libQt5Network.so", "/home/can/Qt-android/5.4/android_x86/lib/libQt5Core.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5XmlPatterns"
    libNameForLinkerRelease: "Qt5XmlPatterns"
    libFilePathDebug: ""
    libFilePathRelease: "/home/can/Qt-android/5.4/android_x86/lib/libQt5XmlPatterns.so"
    cpp.defines: ["QT_XMLPATTERNS_LIB"]
    cpp.includePaths: ["/home/can/Qt-android/5.4/android_x86/include", "/home/can/Qt-android/5.4/android_x86/include/QtXmlPatterns"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.8/libs/x86", "/opt/android/ndk/platforms/android-9/arch-x86//usr/lib", "/home/can/Qt-android/5.4/android_x86/lib"]
    
}
