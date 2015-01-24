import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebEngineCore"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "quick"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: ["/usr/lib/libQt5Quick.so.5.4.0", "/usr/lib/libQt5Gui.so.5.4.0", "/usr/lib/libQt5Qml.so.5.4.0", "/usr/lib/libQt5Network.so.5.4.0", "/usr/lib/libQt5Core.so.5.4.0", "pthread"]
    dynamicLibsRelease: ["/usr/lib/libQt5Quick.so.5.4.0", "/usr/lib/libQt5Gui.so.5.4.0", "/usr/lib/libQt5Qml.so.5.4.0", "/usr/lib/libQt5Network.so.5.4.0", "/usr/lib/libQt5Core.so.5.4.0", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5WebEngineCore"
    libNameForLinkerRelease: "Qt5WebEngineCore"
    libFilePathDebug: "/usr/lib/libQt5WebEngineCore.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5WebEngineCore.so.5.4.0"
    cpp.defines: ["QT_WEBENGINECORE_LIB"]
    cpp.includePaths: []
    cpp.libraryPaths: []
    
}
