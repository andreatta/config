import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "DBus"
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
    libNameForLinkerDebug: "QtDBus"
    libNameForLinkerRelease: "QtDBus"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQtDBus.so.4.8.7"
    cpp.defines: ["QT_DBUS_LIB"]
    cpp.includePaths: ["/usr/include/qt4", "/usr/include/qt4/QtDBus"]
    cpp.libraryPaths: []
    
}
