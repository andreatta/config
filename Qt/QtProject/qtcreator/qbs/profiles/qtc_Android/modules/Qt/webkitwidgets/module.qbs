import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebKitWidgets"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets", "network", "webkit"]}

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
    libNameForLinkerDebug: "Qt5WebKitWidgets"
    libNameForLinkerRelease: "Qt5WebKitWidgets"
    libFilePathDebug: "/usr/lib/libQt5WebKitWidgets.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5WebKitWidgets.so.5.4.0"
    cpp.defines: ["QT_WEBKITWIDGETS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWebKitWidgets"]
    cpp.libraryPaths: []
    
}
