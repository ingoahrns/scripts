#!/usr/bin/env python3


import sys
import os
from PyQt5 import QtGui, uic, QtCore
from PyQt5.QtWidgets import QMainWindow, QApplication, QDialog, QFileDialog, QMessageBox

class GUIWindow(QDialog):
    def __init__(self):
        QDialog.__init__(self,None,QtCore.Qt.WindowStaysOnTopHint)
        self.ui = uic.loadUi(os.path.expanduser(os.path.expandvars("~/robot/scripts/starter.ui")),self)
        
        self.ui.StartButton.clicked.connect(self.OnStart)
        self.ui.KillButton.clicked.connect(self.OnKill)
        
    def OnStart(self):
        os.system(self.ui.ScriptEdit.text())
    
    def OnKill(self):
        os.system("kill.sh")                    

def main(args=None):
        argv = [""]
        winapp = QApplication(argv)
        window = GUIWindow()
        window.setGeometry(QtCore.QRect(0,0,200,128))
        window.show()
        res = winapp.exec_()
        sys.exit(res)
        
if __name__ == "__main__":
    main()

