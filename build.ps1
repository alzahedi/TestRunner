
# Activate virtual environment
Write-Host "Setting up build environment..."
python -m venv venv
.\venv\Scripts\Activate.ps1

Write-Host "Installing Scheduler package"
# Install Scheduler package
pip install .\scheduler-0.1.2-py3-none-any.whl

Write-Host "Installing pyinstaller"
# Install pyinstaller
pip install pyinstaller

Write-Host "Installing other dependencies"
# Install other dependencies
pip install -r requirements.txt

Write-Host "Building the application"
# Build the application
pyinstaller --onefile main.py

Write-Host "Build completed. Executable is in the 'dist' folder."