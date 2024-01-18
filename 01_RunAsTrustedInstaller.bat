@Echo OFF
:: You must run this file as TrustedInstaller privilege.
:: You can use NSudo or PowerRun and etc.

:: Fix Downloads Folder
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}\TopViews\{00000000-0000-0000-0000-000000000000}" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}\TopViews\{00000000-0000-0000-0000-000000000000}" /v "ColumnList" /t REG_SZ /d "prop:0(34)System.ItemNameDisplay;0System.DateModified;0System.ItemTypeText;0System.Size;1System.DateCreated;1System.Author;1System.Category;1System.Keywords;1System.Title" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}\TopViews\{00000000-0000-0000-0000-000000000000}" /v "LogicalViewMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}\TopViews\{00000000-0000-0000-0000-000000000000}" /v "Name" /t REG_SZ /d "NoName" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}\TopViews\{00000000-0000-0000-0000-000000000000}" /v "Order" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{885a186e-a440-4ada-812b-db871b942259}\TopViews\{00000000-0000-0000-0000-000000000000}" /v "SortByList" /t REG_SZ /d "prop:System.ItemNameDisplay" /f

:: Fix Musics Folder
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{94D6DDCC-4A68-4175-A374-BD584A510B78}\TopViews\{00000000-0000-0000-0000-000000000000}" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{94D6DDCC-4A68-4175-A374-BD584A510B78}\TopViews\{00000000-0000-0000-0000-000000000000}" /v "ColumnList" /t REG_SZ /d "prop:0(34)System.ItemNameDisplay;0System.DateModified;0System.ItemTypeText;0System.Size;1System.DateCreated;1System.Author;1System.Category;1System.Keywords;1System.Title" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{94D6DDCC-4A68-4175-A374-BD584A510B78}\TopViews\{00000000-0000-0000-0000-000000000000}" /v "LogicalViewMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{94D6DDCC-4A68-4175-A374-BD584A510B78}\TopViews\{00000000-0000-0000-0000-000000000000}" /v "Name" /t REG_SZ /d "NoName" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{94D6DDCC-4A68-4175-A374-BD584A510B78}\TopViews\{00000000-0000-0000-0000-000000000000}" /v "Order" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderTypes\{94D6DDCC-4A68-4175-A374-BD584A510B78}\TopViews\{00000000-0000-0000-0000-000000000000}" /v "SortByList" /t REG_SZ /d "prop:System.ItemNameDisplay" /f

Echo DONE.

Pause
Exit
