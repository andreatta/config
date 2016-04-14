import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Network"
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
    libNameForLinkerDebug: "QtNetwork"
    libNameForLinkerRelease: "QtNetwork"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQtNetwork.so.4.8.7"
    cpp.defines: ["QT_NETWORK_LIB"]
    cpp.includePaths: ["/usr/include/qt4", "/usr/include/qt4/QtNetwork"]
    cpp.libraryPaths: []
    
}
