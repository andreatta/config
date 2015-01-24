import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Concurrent"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
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
    libNameForLinkerDebug: "Qt5Concurrent"
    libNameForLinkerRelease: "Qt5Concurrent"
    libFilePathDebug: "/usr/lib/libQt5Concurrent.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5Concurrent.so.5.4.0"
    cpp.defines: ["QT_CONCURRENT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtConcurrent"]
    cpp.libraryPaths: []
    
}
