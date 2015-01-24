import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "OpenGL"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/can/Qt-android/5.4/android_x86/lib/libQt5Widgets.so", "/home/can/Qt-android/5.4/android_x86/lib/libQt5Gui.so", "/home/can/Qt-android/5.4/android_x86/lib/libQt5Core.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5OpenGL"
    libNameForLinkerRelease: "Qt5OpenGL"
    libFilePathDebug: ""
    libFilePathRelease: "/home/can/Qt-android/5.4/android_x86/lib/libQt5OpenGL.so"
    cpp.defines: ["QT_OPENGL_LIB"]
    cpp.includePaths: ["/home/can/Qt-android/5.4/android_x86/include", "/home/can/Qt-android/5.4/android_x86/include/QtOpenGL"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.8/libs/x86", "/opt/android/ndk/platforms/android-9/arch-x86//usr/lib", "/home/can/Qt-android/5.4/android_x86/lib"]
    
}
