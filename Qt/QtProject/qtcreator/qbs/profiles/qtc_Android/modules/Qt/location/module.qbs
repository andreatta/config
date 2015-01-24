import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Location"
    Depends { name: "Qt"; submodules: ["core", "positioning", "gui", "quick"]}

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
    libNameForLinkerDebug: "Qt5Location"
    libNameForLinkerRelease: "Qt5Location"
    libFilePathDebug: "/usr/lib/libQt5Location.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5Location.so.5.4.0"
    cpp.defines: ["QT_LOCATION_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtLocation"]
    cpp.libraryPaths: []
    
}
