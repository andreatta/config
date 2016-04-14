import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Sql"
    Depends { name: "Qt"; submodules: ["core"]}

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
    libNameForLinkerDebug: "QtSql"
    libNameForLinkerRelease: "QtSql"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQtSql.so.4.8.7"
    cpp.defines: ["QT_SQL_LIB"]
    cpp.includePaths: ["/usr/include/qt4", "/usr/include/qt4/QtSql"]
    cpp.libraryPaths: []
    
}
