@echo off
set http_proxy=http://127.0.0.1:7890 & set https_proxy=http://127.0.0.1:7890
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /format:list') do set datetime=%%I
set datetime=%datetime:~0,8%-%datetime:~8,6%
git add --all
git commit -m "Auto commit at %datetime%"
git push
