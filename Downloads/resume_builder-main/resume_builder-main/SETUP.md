# 🔧 Setup Instructions for Resume Builder

This guide will help you set up the Resume Builder app with your own Firebase configuration.

## 🔥 Firebase Setup

### Step 1: Create Firebase Project

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Click "Create a project"
3. Enter project name (e.g., "resume-builder-[your-name]")
4. Enable Google Analytics (optional)
5. Click "Create project"

### Step 2: Enable Authentication

1. In Firebase Console, go to "Authentication"
2. Click "Get started"
3. Go to "Sign-in method" tab
4. Enable "Email/Password" provider
5. Enable "Google" provider
6. Add your domain to authorized domains

### Step 3: Create Firestore Database

1. Go to "Firestore Database"
2. Click "Create database"
3. Choose "Start in test mode" (for development)
4. Select a location close to your users

### Step 4: Enable Storage

1. Go to "Storage"
2. Click "Get started"
3. Choose "Start in test mode"
4. Click "Done"

### Step 5: Download Configuration Files

#### For Android:
1. Click "Project Settings" (gear icon)
2. Go to "Your apps" section
3. Click "Add app" → Android icon
4. Enter package name: `com.example.resume_builder`
5. Download `google-services.json`
6. Place it in `android/app/` directory

#### For iOS:
1. Click "Add app" → iOS icon
2. Enter bundle ID: `com.example.resumeBuilder`
3. Download `GoogleService-Info.plist`
4. Place it in `ios/Runner/` directory

#### For macOS:
1. Click "Add app" → iOS icon (same as iOS)
2. Enter bundle ID: `com.example.resumeBuilder.RunnerTests`
3. Download `GoogleService-Info.plist`
4. Place it in `macos/Runner/` directory

### Step 6: Configure Flutter App

1. Install FlutterFire CLI:
   ```bash
   dart pub global activate flutterfire_cli
   ```

2. Login to Firebase:
   ```bash
   firebase login
   ```

3. Configure FlutterFire:
   ```bash
   flutterfire configure
   ```
   - Select your Firebase project
   - Select platforms (Android, iOS, Web, macOS)
   - This will generate `lib/firebase_options.dart`

### Step 7: Environment Variables

1. Copy `.env.example` to `.env`:
   ```bash
   cp .env.example .env
   ```

2. Fill in your configuration values in `.env`:
   ```env
   FIREBASE_API_KEY=your_actual_api_key
   FIREBASE_APP_ID=your_actual_app_id
   FIREBASE_PROJECT_ID=your_actual_project_id
   # ... etc
   ```

## 📱 Google Ads Setup (Optional)

1. Go to [Google AdMob](https://admob.google.com/)
2. Create a new app or add existing app
3. Get your App ID
4. Add it to `.env` file:
   ```env
   GOOGLE_ADS_APP_ID=ca-app-pub-1234567890123456~1234567890
   ```

## 🔐 Google Sign-In Setup

### Android Setup:
1. Get SHA-1 fingerprint:
   ```bash
   cd android
   ./gradlew signingReport
   ```
2. Add SHA-1 to Firebase project settings
3. Download updated `google-services.json`

### iOS Setup:
1. In Firebase project settings, download `GoogleService-Info.plist`
2. Add reversed client ID to `ios/Runner/Info.plist`:
   ```xml
   <key>CFBundleURLTypes</key>
   <array>
       <dict>
           <key>CFBundleURLName</key>
           <string>REVERSED_CLIENT_ID</string>
           <key>CFBundleURLSchemes</key>
           <array>
               <string>YOUR_REVERSED_CLIENT_ID</string>
           </array>
       </dict>
   </array>
   ```

## 🚀 Running the App

1. Install dependencies:
   ```bash
   flutter pub get
   ```

2. Run the app:
   ```bash
   flutter run
   ```

## 🔍 Troubleshooting

### Common Issues:

1. **Build errors**: Make sure all configuration files are in correct locations
2. **Authentication not working**: Check if providers are enabled in Firebase Console
3. **Database permission denied**: Update Firestore security rules
4. **Google Sign-In not working**: Verify SHA-1 fingerprint is added to Firebase

### Firebase Security Rules

For development, use these basic rules in Firestore:

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // Users can read/write their own documents
    match /users/{userId} {
      allow read, write: if request.auth != null && request.auth.uid == userId;
    }
    
    // Users can read/write their own resumes
    match /resumes/{resumeId} {
      allow read, write: if request.auth != null && request.auth.uid == resource.data.userId;
    }
  }
}
```

For Storage:
```javascript
rules_version = '2';
service firebase.storage {
  match /b/{bucket}/o {
    match /resumes/{userId}/{allPaths=**} {
      allow read, write: if request.auth != null && request.auth.uid == userId;
    }
  }
}
```

## 📞 Need Help?

If you encounter any issues:
1. Check the [Flutter documentation](https://flutter.dev/docs)
2. Review [Firebase documentation](https://firebase.google.com/docs)
3. Open an issue in this repository
4. Contact the maintainer

Happy coding! 🎉