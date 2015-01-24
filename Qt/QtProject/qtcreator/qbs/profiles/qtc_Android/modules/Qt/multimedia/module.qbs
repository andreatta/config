import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Multimedia"
    Depends { name: "Qt"; submodules: ["core", "network", "gui"]}

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
    libNameForLinkerDebug: "Qt5Multimedia"
    libNameForLinkerRelease: "Qt5Multimedia"
    libFilePathDebug: "/usr/lib/libQt5Multimedia.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5Multimedia.so.5.4.0"
    cpp.defines: ["QT_MULTIMEDIA_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtMultimedia"]
    cpp.libraryPaths: []
    
}
