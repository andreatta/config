import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "OpenVG"
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
    libNameForLinkerDebug: "QtOpenVG"
    libNameForLinkerRelease: "QtOpenVG"
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: ["QT_OPENVG_LIB"]
    cpp.includePaths: ["/usr/include/qt4", "/usr/include/qt4/QtOpenVG"]
    cpp.libraryPaths: []
    
}
