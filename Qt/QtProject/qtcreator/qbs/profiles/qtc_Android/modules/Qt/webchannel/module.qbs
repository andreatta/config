import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebChannel"
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
    libNameForLinkerDebug: "Qt5WebChannel"
    libNameForLinkerRelease: "Qt5WebChannel"
    libFilePathDebug: "/usr/lib/libQt5WebChannel.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5WebChannel.so.5.4.0"
    cpp.defines: ["QT_WEBCHANNEL_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWebChannel"]
    cpp.libraryPaths: []
    
}
