import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "ScriptTools"
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
    libNameForLinkerDebug: "Qt5ScriptTools"
    libNameForLinkerRelease: "Qt5ScriptTools"
    libFilePathDebug: "/usr/lib/libQt5ScriptTools.so.5.4.0"
    libFilePathRelease: "/usr/lib/libQt5ScriptTools.so.5.4.0"
    cpp.defines: ["QT_SCRIPTTOOLS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtScriptTools"]
    cpp.libraryPaths: []
    
}
