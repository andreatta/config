import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "MultimediaQuick_p"
    Depends { name: "Qt"; submodules: ["core", "quick", "multimedia-private"]}

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
    libNameForLinkerDebug: "Qt5MultimediaQuick_p"
    libNameForLinkerRelease: "Qt5MultimediaQuick_p"
    libFilePathDebug: "/usr/lib/libQt5MultimediaQuick_p.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5MultimediaQuick_p.so.5.4.0"
    cpp.defines: ["QT_QTMULTIMEDIAQUICKTOOLS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtMultimediaQuick_p", "/usr/include/qt/QtMultimediaQuick_p/5.4.0", "/usr/include/qt/QtMultimediaQuick_p/5.4.0/QtMultimediaQuick_p"]
    cpp.libraryPaths: []
    
}
