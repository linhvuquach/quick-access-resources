@echo off

set "TITLE=Software Engineering - Daily News"

title %TITLE%

echo Starting access resources

set "URL_FILE=resources.txt"

if exist %URL_FILE% (
    for /F "tokens=*" %%A in (%URL_FILE%) do (
        start "" msedge %%A
    )
)

echo Succesfully access - %TITLE%

pause