@Echo OFF

Reg.exe add "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\All Folders\Shell" /v "FolderType" /t "REG_SZ" /d "NotSpecified" /f
Reg.exe delete "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
Reg.exe delete "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f

Taskkill.exe /im explorer.exe /f
explorer.exe

Echo DONE.

Pause
Exit
