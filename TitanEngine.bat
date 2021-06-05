@echo off
cls
title Titan Engine
color 0a
goto main

:main
cls
echo.
echo Titan Engine
echo.
cmdMenuSel f870 "Start" "Exit"
if %ERRORLEVEL% == 1 goto Startscr
if %ERRORLEVEL% == 2 goto exit

:exit
cls
echo.
echo Are you sure?
echo.
cmdMenuSel f870 "Yes" "No"
if %ERRORLEVEL% == 1 exit
if %ERRORLEVEL% == 2 goto main

:Startscr
cls
echo Create a folder with your project's name.
echo What is the respective folder's name?
echo (NOTE: No spaces between words)
set /p name=
cls
echo Select a genre:
echo.
echo 1.Adventure
echo 2.Visual-Game
echo.
set /p game=
if %game% == 1 goto Titan1
if %game% == 2 goto Visual

:Visual
cls
echo Loading...
ping localhost -n 3 >null
cls
echo @echo off >>%name%\%name%.bat
echo cls >>%name%\%name%.bat
goto Visual1

:Visual1
cls
echo.
echo Titan Engine
echo.
echo 1.Menu
echo 2.Gameplay
echo.
set /p vis=
if %vis%==1 goto vismenu
if %vis%==2 goto visgame

:visgame
cls
echo.
echo Titan Engine
echo.
echo 1.Interaction
echo 2.Waiting prompt
echo.
set /p what=
if %what%==1 goto interact0
if %what%==2 goto wait0

:interact0
cls
echo Type the message (without ending dots):
echo.
set /p message=
cls
echo set /pause=%message%... >>%name%\%name%.bat
cls
goto visgame

:wait0
cls
echo Type the message:
set /p mes=
cls
echo echo %mes% >>%name%\%name%.bat
cls
echo Type how many seconds should the prompt take:
set /p second=
cls
echo echo %second% >>%name%\%name%.bat
cls
echo Waiting Prompt added.
echo.
pause
goto visgame

:vismenu
cls
echo.
echo Titan Engine
echo.
echo Type the title:
set /p title=
cls
echo echo ---%title%--- >>%name%\%name%.bat
cls
goto Vismenu0

:Vismenu0
cls
echo.
echo Titan Engine
echo.
echo Add options:
echo 1.Start option
echo 2.Story option
echo 3.Exit option
echo 4.Add input (use this last)
echo 5.Back
set /p menuOption=
if %menuOption% == 1 goto StartOption1
if %menuOption% == 2 goto StoryOption1
if %menuOption% == 3 goto ExitOption1
if %menuOption% == 4 goto Input1
if %menuOption% == 5 goto Visual1

:ExitOption1
cls
echo echo 3.Exit >>%name%\%name%.bat
cls
echo Option added.
echo.
pause
goto Vismenu0

:StoryOption1
cls
echo echo 2.Story >>%name%\%name%.bat
cls
echo Type the story in 5 rows (type "." to get a free space):
set /p row1=
set /p row2=
set /p row3=
set /p row4=
set /p row5=
cls
echo echo %row1% >>%name%\%name%.bat
echo echo %row2% >>%name%\%name%.bat
echo echo %row3% >>%name%\%name%.bat
echo echo %row4% >>%name%\%name%.bat
echo echo %row5% >>%name%\%name%.bat
cls
echo Option added.
echo.
pause
goto Vismenu0

:StartOption1
cls
echo echo 1.Play >>%name%\%name%.bat
cls
echo Option added.
echo.
pause
goto Vismenu0

:Input1
cls
echo set /p input= >>%name%\%name%.bat
echo if %%input%% == 1 goto start >>%name%\%name%.bat
echo if %%input%% == 2 goto story >>%name%\%name%.bat
echo if %%input%% == 3 exit >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo :start >>%name%\%name%.bat
echo cls >>%name%\%name%.bat
cls
echo Option added.
echo.
pause
goto Vismenu0


























------------

:Titan1
cls
echo Loading...
ping localhost -n 3 >null
cls
echo @echo off >>%name%\%name%.bat
echo cls >>%name%\%name%.bat
goto Titan

:Titan
cls
echo.
echo Titan Engine
echo.
echo 1.Menu
echo 2.Gameplay
echo 3.Cutscenes
echo.
set /p option=
if %option% == 1 goto TitanMenus
if %option% == 2 goto TitanGame
if %option% == 3 goto TitanCuts

:TitanGame
cls
echo.
echo Titan Engine
echo.
echo 1.Interactions
echo 2.Waiting prompt/Going scene
echo 3.Back
echo.
set /p opt=
cls
if %opt%==1 goto gameInteract
if %opt%==2 goto aheadScene
if %opt%==3 goto Titan

:gameInteract
cls
echo Type the message (without ending dots):
echo.
set /p message=
cls
echo set /pause=%message%... >>%name%\%name%.bat
cls
goto TitanGame

:waitPrompt
cls
echo Type the message:
set /p mes=
cls
echo echo %mes% >>%name%\%name%.bat
cls
echo Type how many seconds should the prompt take:
set /p second=
cls
echo echo %second% >>%name%\%name%.bat
cls
echo Waiting Prompt added.
echo.
pause
goto TitanGame

:TitanCuts
cls
echo Draw through letters
set /p art1=
set /p art2=
set /p art3=
set /p art4=
set /p art5=
set /p art6=
set /p art7=
set /p art8=
set /p art9=
set /p art10=
set /p art11=
set /p art12=
cls
echo echo %art1% >>%name%\%name%.bat
echo echo %art2% >>%name%\%name%.bat
echo echo %art4% >>%name%\%name%.bat
echo echo %art5% >>%name%\%name%.bat
echo echo %art6% >>%name%\%name%.bat
echo echo %art7% >>%name%\%name%.bat
echo echo %art8% >>%name%\%name%.bat
echo echo %art9% >>%name%\%name%.bat
echo echo %art10% >>%name%\%name%.bat
echo echo %art11% >>%name%\%name%.bat
echo echo %art12% >>%name%\%name%.bat
cls
echo Type the message:
set /p msg=
cls
echo echo %msg% >>%name%\%name%.bat
cls
echo Type how many seconds the cutscene should take:
set /p sec=
cls
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo timeout %sec% >>%name%\%name%.bat
echo cls >>%name%\%name%.bat
cls
echo Cutscene added.
echo.
pause
goto Titan

:TitanMenus
cls
echo.
echo Titan Engine
echo.
echo Type the title:
set /p title=
cls
echo echo ---%title%--- >>%name%\%name%.bat
cls
goto TitanMenu

:TitanMenu
cls
echo.
echo Titan Engine
echo.
echo Add options:
echo 1.Start option
echo 2.Story option
echo 3.Exit option
echo 4.Add input (use this last)
echo 5.Back
set /p menuOption=
if %menuOption% == 1 goto StartOption0
if %menuOption% == 2 goto StoryOption0
if %menuOption% == 3 goto ExitOption0
if %menuOption% == 4 goto Input0
if %menuOption% == 5 goto Titan

:ExitOption0
cls
echo echo 3.Exit >>%name%\%name%.bat
cls
echo Option added.
echo.
pause
goto TitanMenu

:StoryOption0
cls
echo echo 2.Story >>%name%\%name%.bat
cls
echo Type the story in 5 rows (type "." to get a free space):
set /p row1=
set /p row2=
set /p row3=
set /p row4=
set /p row5=
cls
echo echo %row1% >>%name%\%name%.bat
echo echo %row2% >>%name%\%name%.bat
echo echo %row3% >>%name%\%name%.bat
echo echo %row4% >>%name%\%name%.bat
echo echo %row5% >>%name%\%name%.bat
cls
echo Option added.
echo.
goto TitanMenu

:StartOption0
cls
echo echo 1.Play >>%name%\%name%.bat
cls
echo Option added.
echo.
pause
goto TitanMenu

:Input0
cls
echo set /p input= >>%name%\%name%.bat
echo if %%input%% == 1 goto start >>%name%\%name%.bat
echo if %%input%% == 2 goto story >>%name%\%name%.bat
echo if %%input%% == 3 exit >>%name%\%name%.bat
echo echo. >>%name%\%name%.bat
echo :start >>%name%\%name%.bat
echo cls >>%name%\%name%.bat
cls
echo Option added.
echo.
pause
goto TitanMenu


