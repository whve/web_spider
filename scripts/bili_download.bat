@echo off
for /f "delims=" %%a in (list.txt) do (
    you-get %%a -o ./download
)
pause