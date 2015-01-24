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
    libNameForLinkerDebug: "Qt5DBus"
    libNameForLinkerRelease: "Qt5DBus"
    libFilePathDebug: "/usr/lib/libQt5DBus.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5DBus.so.5.4.0"
    cpp.defines: ["QT_DBUS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtDBus"]
    cpp.libraryPaths: []
    
}
