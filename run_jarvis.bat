@echo off
title JARVIS Launcher
echo  Starting JARVIS...
echo.
python "%~dp0jarvis.py"
echo.
echo  ============================================================
echo   JARVIS exited. See any error message above.
echo   Common fixes:
echo     - Missing package?  Run setup.bat again
echo     - API key missing?  setx ANTHROPIC_API_KEY your-key-here
echo     - PyAudio error?    pip install pipwin  then  pipwin install pyaudio
echo  ============================================================
echo.
pause
