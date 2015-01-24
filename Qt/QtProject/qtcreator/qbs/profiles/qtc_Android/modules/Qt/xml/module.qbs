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
    libNameForLinkerDebug: "Qt5Xml"
    libNameForLinkerRelease: "Qt5Xml"
    libFilePathDebug: "/usr/lib/libQt5Xml.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5Xml.so.5.4.0"
    cpp.defines: ["QT_XML_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtXml"]
    cpp.libraryPaths: []
    
}
