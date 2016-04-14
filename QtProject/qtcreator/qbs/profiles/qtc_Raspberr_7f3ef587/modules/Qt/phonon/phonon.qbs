import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "phonon"
    Depends { name: "Qt"; submodules: ['core'] }
    cpp.defines: ["QT_PHONON_LIB"]
    cpp.includePaths: ["/usr/include/qt4", "/usr/include/qt4/Phonon"]
}
