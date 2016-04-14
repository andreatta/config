import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Svg"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

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
    libNameForLinkerDebug: "QtSvg"
    libNameForLinkerRelease: "QtSvg"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQtSvg.so.4.8.7"
    cpp.defines: ["QT_SVG_LIB"]
    cpp.includePaths: ["/usr/include/qt4", "/usr/include/qt4/QtSvg"]
    cpp.libraryPaths: []
    
}
