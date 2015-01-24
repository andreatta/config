import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QuickTest"
    Depends { name: "Qt"; submodules: ["core", "widgets"]}

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
    libNameForLinkerDebug: "Qt5QuickTest"
    libNameForLinkerRelease: "Qt5QuickTest"
    libFilePathDebug: "/usr/lib/libQt5QuickTest.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5QuickTest.so.5.4.0"
    cpp.defines: ["QT_QMLTEST_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtQuickTest"]
    cpp.libraryPaths: []
    
}
