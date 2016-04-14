import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "UiTools"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/usr/lib/libQt5Widgets.so.5.6.0", "/usr/lib/libQt5Gui.so.5.6.0", "/usr/lib/libQt5Core.so.5.6.0", "pthread", "/usr/lib/libQt5Widgets.so.5.6.0", "/usr/lib/libQt5Gui.so.5.6.0", "/usr/lib/libQt5Core.so.5.6.0", "GL"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5UiTools"
    libNameForLinkerRelease: "Qt5UiTools"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5UiTools.a"
    cpp.defines: ["QT_UITOOLS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtUiTools"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
