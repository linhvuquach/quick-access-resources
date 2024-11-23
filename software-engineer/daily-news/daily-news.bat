@echo off

set "TITLE=Software Engineering - Daily News"

title %TITLE%

echo Starting access resources

set "URL_FILE=resources.txt"

if exist %URL_FILE% (
    for /F "tokens=*" %%A in (%URL_FILE%) do (
        rem Skip empty lines
        if not "%%A"=="" (
            start "" msedge %%A
        )
    )
) else (
    echo File "%URL_FILE%" not found.
)

echo Succesfully access - %TITLE%

pause