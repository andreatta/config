import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Declarative"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets", "script"]}

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
    libNameForLinkerDebug: "Qt5Declarative"
    libNameForLinkerRelease: "Qt5Declarative"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Declarative.so.5.4.0"
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
