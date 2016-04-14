import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Xml"
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
    libNameForLinkerDebug: "QtXml"
    libNameForLinkerRelease: "QtXml"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQtXml.so.4.8.7"
    cpp.defines: ["QT_XML_LIB"]
    cpp.includePaths: ["/usr/include/qt4", "/usr/include/qt4/QtXml"]
    cpp.libraryPaths: []
    
}
