# Flutter Setup and Run Script
Write-Host "Setting up Flutter and running the resume builder project..." -ForegroundColor Green

# Create flutter directory
$flutterDir = "C:\flutter"
if (!(Test-Path $flutterDir)) {
    New-Item -ItemType Directory -Path $flutterDir -Force
}

# Download Flutter
Write-Host "Downloading Flutter SDK..." -ForegroundColor Yellow
$flutterZip = "$flutterDir\flutter.zip"
try {
    Invoke-WebRequest -Uri "https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.24.5-stable.zip" -OutFile $flutterZip
    Write-Host "Flutter downloaded successfully" -ForegroundColor Green
} catch {
    Write-Host "Failed to download Flutter: $_" -ForegroundColor Red
    exit 1
}

# Extract Flutter
Write-Host "Extracting Flutter..." -ForegroundColor Yellow
try {
    Expand-Archive -Path $flutterZip -DestinationPath $flutterDir -Force
    Write-Host "Flutter extracted successfully" -ForegroundColor Green
} catch {
    Write-Host "Failed to extract Flutter: $_" -ForegroundColor Red
    exit 1
}

# Add Flutter to PATH for this session
$flutterBin = "$flutterDir\flutter\bin"
$env:PATH = "$flutterBin;$env:PATH"

# Verify Flutter installation
Write-Host "Verifying Flutter installation..." -ForegroundColor Yellow
& flutter --version

# Run flutter doctor
Write-Host "Running Flutter doctor..." -ForegroundColor Yellow
& flutter doctor

# Navigate to project directory and run
$projectDir = "C:\Users\Abhishek Kumar\Downloads\resume_builder-main\resume_builder-main"
Set-Location $projectDir

# Get dependencies
Write-Host "Getting Flutter dependencies..." -ForegroundColor Yellow
& flutter pub get

# Check for connected devices
Write-Host "Checking for devices..." -ForegroundColor Yellow
& flutter devices

# Run the app
Write-Host "Starting the Flutter app..." -ForegroundColor Green
& flutter run