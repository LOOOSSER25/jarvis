@echo off
title JARVIS v3 Setup
echo.
echo  ============================================================
echo   J.A.R.V.I.S  v3  —  Setup
echo  ============================================================
echo.

python --version >nul 2>&1
if errorlevel 1 (
    echo  ERROR: Python not found.
    echo  Download Python 3.10+ from https://python.org
    echo  During install, CHECK "Add Python to PATH"
    pause & exit /b 1
)
echo  [OK] Python found.
echo.

echo  [1/4] Installing core packages...
pip install anthropic speechrecognition pyttsx3 pyautogui psutil pillow keyboard mouse pyperclip requests
echo.

echo  [2/4] Installing PyAudio (microphone)...
pip install pyaudio
if errorlevel 1 (
    echo  Trying pipwin fallback for PyAudio...
    pip install pipwin
    pipwin install pyaudio
)
echo.

echo  [3/4] Installing image generation packages...
echo  Note: Enables real AI images. First image generation downloads ~4GB model.
pip install diffusers transformers accelerate
pip install torch --index-url https://download.pytorch.org/whl/cpu
echo  (For GPU/faster images visit https://pytorch.org for CUDA version)
echo.

echo  [4/4] All done!
echo.
echo  ============================================================
echo   NEXT STEPS
echo  ============================================================
echo.
echo  1. Get a FREE API key at:  https://console.anthropic.com
echo.
echo  2. Set it permanently (run this in a NEW Command Prompt):
echo     setx ANTHROPIC_API_KEY "sk-ant-your-key-here"
echo.
echo  3. Launch JARVIS (click Yes on the admin prompt):
echo     python jarvis.py
echo.
echo  Optional — to build a standalone .exe:
echo     pip install pyinstaller
echo     pyinstaller --onefile --noconsole --uac-admin jarvis.py
echo  ============================================================
pause
