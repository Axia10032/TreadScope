@echo off
cd /d "%~dp0"
.venv\Scripts\python.exe treadscope.py
if errorlevel 1 pause
