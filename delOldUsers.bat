@echo off
Search-ADAccount –AccountDisabled –UsersOnly –SearchBase “OU=users, DC=Company, DC=LAN” |
Move-ADOb1ject –TargetPath “OU=Disabled Users, DC=Company, DC=LAN”
echo.
echo "Deleted old accounts"