import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "MultimediaWidgets"
    Depends { name: "Qt"; submodules: ["core", "gui", "multimedia", "widgets"]}

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
    libNameForLinkerDebug: "Qt5MultimediaWidgets"
    libNameForLinkerRelease: "Qt5MultimediaWidgets"
    libFilePathDebug: "/usr/lib/libQt5MultimediaWidgets.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5MultimediaWidgets.so.5.4.0"
    cpp.defines: ["QT_MULTIMEDIAWIDGETS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtMultimediaWidgets"]
    cpp.libraryPaths: []
    
}
