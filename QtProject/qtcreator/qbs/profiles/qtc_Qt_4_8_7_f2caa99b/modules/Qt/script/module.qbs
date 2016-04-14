import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Script"
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
    libNameForLinkerDebug: "QtScript"
    libNameForLinkerRelease: "QtScript"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQtScript.so.4.8.7"
    cpp.defines: ["QT_SCRIPT_LIB"]
    cpp.includePaths: ["/usr/include/qt4", "/usr/include/qt4/QtScript"]
    cpp.libraryPaths: []
    
}
