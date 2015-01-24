import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebEngineWidgets"
    Depends { name: "Qt"; submodules: ["core", "gui", "webengine", "widgets", "network", "quick"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: ["/usr/lib/libQt5WebEngine.so.5.4.0", "/usr/lib/libQt5Quick.so.5.4.0", "/usr/lib/libQt5Widgets.so.5.4.0", "/usr/lib/libQt5Gui.so.5.4.0", "/usr/lib/libQt5Qml.so.5.4.0", "/usr/lib/libQt5Network.so.5.4.0", "/usr/lib/libQt5Core.so.5.4.0", "pthread"]
    dynamicLibsRelease: ["/usr/lib/libQt5WebEngine.so.5.4.0", "/usr/lib/libQt5Quick.so.5.4.0", "/usr/lib/libQt5Widgets.so.5.4.0", "/usr/lib/libQt5Gui.so.5.4.0", "/usr/lib/libQt5Qml.so.5.4.0", "/usr/lib/libQt5Network.so.5.4.0", "/usr/lib/libQt5Core.so.5.4.0", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5WebEngineWidgets"
    libNameForLinkerRelease: "Qt5WebEngineWidgets"
    libFilePathDebug: "/usr/lib/libQt5WebEngineWidgets.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5WebEngineWidgets.so.5.4.0"
    cpp.defines: ["QT_WEBENGINEWIDGETS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWebEngineWidgets"]
    cpp.libraryPaths: []
    
}
