@echo off
cd /d %~dp0
if not exist venv\Scripts\python.exe (
  echo Membuat virtual environment...
  python -m venv venv
)
call venv\Scripts\activate.bat
if not exist venv\.deps_installed (
  echo Menginstall dependency...
  python -m pip install -r requirements.txt
  if errorlevel 1 pause & exit /b 1
  type nul > venv\.deps_installed
)
echo.
echo Warkop Sederhana berjalan di http://127.0.0.1:5000
echo Login: admin / admin123
echo.
python app.py
pause
