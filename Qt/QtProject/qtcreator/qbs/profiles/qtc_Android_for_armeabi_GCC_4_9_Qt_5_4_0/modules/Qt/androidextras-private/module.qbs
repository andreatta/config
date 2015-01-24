import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "AndroidExtras"
    Depends { name: "Qt"; submodules: ["androidextras"]}

    hasLibrary: false
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: ""
    libNameForLinkerRelease: ""
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: []
    cpp.includePaths: ["/home/can/Qt-android/5.4/android_armv5/include/QtAndroidExtras/5.4.0", "/home/can/Qt-android/5.4/android_armv5/include/QtAndroidExtras/5.4.0/QtAndroidExtras"]
    cpp.libraryPaths: []
    
}
