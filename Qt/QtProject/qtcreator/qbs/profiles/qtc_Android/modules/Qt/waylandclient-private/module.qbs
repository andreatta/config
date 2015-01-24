import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WaylandClient"
    Depends { name: "Qt"; submodules: ["waylandclient", "platformsupport-private"]}

    hasLibrary: false
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
    libNameForLinkerDebug: ""
    libNameForLinkerRelease: ""
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: []
    cpp.includePaths: ["/usr/include/qt/QtWaylandClient/5.4.0", "/usr/include/qt/QtWaylandClient/5.4.0/QtWaylandClient"]
    cpp.libraryPaths: []
    
}
