import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "XmlPatterns"
    Depends { name: "Qt"; submodules: ["core", "network"]}

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
    libNameForLinkerDebug: "Qt5XmlPatterns"
    libNameForLinkerRelease: "Qt5XmlPatterns"
    libFilePathDebug: "/usr/lib/libQt5XmlPatterns.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5XmlPatterns.so.5.4.0"
    cpp.defines: ["QT_XMLPATTERNS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtXmlPatterns"]
    cpp.libraryPaths: []
    
}
