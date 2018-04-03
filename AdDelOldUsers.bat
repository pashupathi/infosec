@echo off

Search-ADAccount -AccountInactive -TimeSpan 90.00:00:00 -UsersOnly

Search-ADAccount -AccountInactive -TimeSpan 90.00:00:00 -UsersOnly| Move-ADObject -TargetPath "OU=Disabled,DC=quadpro.in" | Out-File -FilePath “C:\quad\Users.txt” –InputObject $_.Name  -Append