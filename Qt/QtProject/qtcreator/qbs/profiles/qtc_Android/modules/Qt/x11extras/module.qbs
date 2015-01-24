import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "X11Extras"
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
    libNameForLinkerDebug: "Qt5X11Extras"
    libNameForLinkerRelease: "Qt5X11Extras"
    libFilePathDebug: "/usr/lib/libQt5X11Extras.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5X11Extras.so.5.4.0"
    cpp.defines: ["QT_X11EXTRAS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtX11Extras"]
    cpp.libraryPaths: []
    
}
