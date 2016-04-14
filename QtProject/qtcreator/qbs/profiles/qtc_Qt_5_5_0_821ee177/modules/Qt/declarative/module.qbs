import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Declarative"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets", "script"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libQt5Widgets.so.5.6.0", "/usr/lib/libQt5Gui.so.5.6.0", "/usr/lib/libQt5Script.so.5.6.0", "/usr/lib/libQt5Sql.so.5.6.0", "/usr/lib/libQt5XmlPatterns.so.5.6.0", "/usr/lib/libQt5Network.so.5.6.0", "/usr/lib/libQt5Core.so.5.6.0", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Declarative"
    libNameForLinkerRelease: "Qt5Declarative"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Declarative.so.5.5.1"
    cpp.defines: {
        var result = ["QT_DECLARATIVE_LIB"];
        if (qmlDebugging)
            result.push("QT_DECLARATIVE_DEBUG");
        return result;
    }
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtDeclarative"]
    cpp.libraryPaths: []
    property bool qmlDebugging: false
    property string qmlPath
    property string qmlImportsPath: ""
}
