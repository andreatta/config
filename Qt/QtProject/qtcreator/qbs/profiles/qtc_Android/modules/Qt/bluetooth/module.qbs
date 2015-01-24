import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Bluetooth"
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
    libNameForLinkerDebug: "Qt5Bluetooth"
    libNameForLinkerRelease: "Qt5Bluetooth"
    libFilePathDebug: "/usr/lib/libQt5Bluetooth.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5Bluetooth.so.5.4.0"
    cpp.defines: ["QT_BLUETOOTH_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtBluetooth"]
    cpp.libraryPaths: []
    
}
