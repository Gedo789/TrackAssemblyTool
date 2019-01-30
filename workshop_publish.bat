:: Hard reset the HEAD: git push origin +<NEW_HEAD_COMMIT_HASH>:master
:: 6af74344a888bdf9fbb35d887c3f77691820a50e
:: git push origin +6af74344a888bdf9fbb35d887c3f77691820a50e:master
:: cd /e
:: cd Documents/Lua-Projs/SVN/TrackAssemblyTool_GIT_master

@echo off

setlocal EnableDelayedExpansion

set gmadGitHEAD=
set gmadRevPath=%~dp0
set gmadNameLOG=gmad_log.txt
set gmadCommits=https://github.com/dvdvideo1234/TrackAssemblyTool/commit/
set gmadPathGIT=D:\Git\bin
set gmadBinPath=F:\Games\Steam\steamapps\common\GarrysMod\bin
set gmadTime="%date:~-4%-%date:~3,2%-%date:~0,2% %time:~0,2%:%time:~3,2%:%time:~6,2%"
set gmadName=TrackAssembly
set gmadID=287012681
set gmadDirs=(lua)
set gmadLogs=
set gmadCRLF=^


:: Ne new line is actually needed when escaped


title Addon %gmadName% updater/publisher

echo Press Crtl+C to terminate !
echo Press a key if you do not want to wait !
echo Rinning in %gmadRevPath%.
echo Npp Find --\h{1,}\n-- replace --\n-- in dos format before commit !
echo.

:: Extract repository source contents

timeout 3
rd /S /Q !gmadRevPath!Workshop
del !gmadRevPath!!gmadNameLOG!
md %gmadRevPath%Workshop\!gmadName!
for %%i in %gmadDirs% do (
  echo Extracting %%i
  timeout 3
  xcopy !gmadRevPath!%%i !gmadRevPath!Workshop\!gmadName!\%%i /EXCLUDE:!gmadRevPath!data\workshop\key.txt /E /C /I /F /R /Y
)
copy !gmadRevPath!data\workshop\addon.json !gmadRevPath!Workshop\!gmadName!\addon.json
call !gmadBinPath!\gmad.exe create -folder "!gmadRevPath!Workshop\!gmadName!" -out "!gmadRevPath!Workshop\!gmadName!.gma"

:: Obtain the latest commit hash from the repository
call !gmadPathGIT!\git.exe rev-parse HEAD>!gmadNameLOG!
set /p gmadGitHEAD=<!gmadNameLOG!

:: Obtain the log message from the latest revision
echo !gmadTime!>!gmadNameLOG!
echo.>>!gmadNameLOG!
echo !gmadCommits!!gmadGitHEAD!>>!gmadNameLOG!
echo. >> !gmadNameLOG!

call !gmadPathGIT!\git.exe log -1 --pretty=%%B>>!gmadNameLOG!

for /f "delims=" %%i in ('type !gmadNameLOG!') do (

  IF DEFINED gmadLogs (
    set "gmadLogs=!gmadLogs!!gmadCRLF!%%i"
  ) ELSE (
    set "gmadLogs=%%i"
  )
)

:: Publish if ID is available or create if it is not. 

echo .
echo .
echo THIS IS THE LAST LOG
echo .
echo .
echo !gmadLogs!
echo .

timeout 15

IF DEFINED gmadID (
  call !gmadBinPath!\gmpublish.exe update -addon "!gmadRevPath!Workshop\!gmadName!.gma" -id "!gmadID!" -icon "!gmadRevPath!data\pictures\icon.jpg" -changes "Generated by batch !"
) ELSE (
  call !gmadBinPath!\gmpublish.exe create -addon "!gmadRevPath!Workshop\!gmadName!.gma" -icon "!gmadRevPath!data\pictures\icon.jpg"
)

:: Tell the user we are done and clean-up the directory

echo.
rd /S /Q !gmadRevPath!Workshop

echo !gmadName! Published !
echo.
timeout 500
