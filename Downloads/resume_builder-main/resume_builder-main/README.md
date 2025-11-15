# 📄 Resume Builder - Flutter App

A modern, feature-rich resume builder application built with Flutter that allows users to create professional resumes with ease. The app includes Firebase authentication, PDF generation, and a clean, intuitive user interface.

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)

## ✨ Features

- 🔐 **Firebase Authentication** - Secure user login and registration
- 📱 **Cross-Platform** - Works on Android, iOS, Web, Windows, macOS, and Linux
- 📄 **PDF Generation** - Create and download professional resume PDFs
- 🎨 **Multiple Templates** - Choose from various resume templates
- 💾 **Cloud Storage** - Save and sync resumes across devices
- 📱 **Responsive Design** - Optimized for different screen sizes
- 🔍 **Google Sign-In** - Easy authentication with Google accounts
- 📊 **Google Ads Integration** - Monetization support
- 🌙 **Modern UI** - Clean and intuitive user interface

## 📸 Screenshots

<div align="center">
  <img src="DemoImages/login_page.jpeg" width="200" alt="Login Page">
  <img src="DemoImages/home_page.jpeg" width="200" alt="Home Page">
  <img src="DemoImages/generate_pdf.jpeg" width="200" alt="Generate PDF">
  <img src="DemoImages/generatedpdf.jpeg" width="200" alt="Generated PDF">
  <img src="DemoImages/like_page.jpeg" width="200" alt="Like Page">
  <img src="DemoImages/download_page.jpeg" width="200" alt="Download Page">
</div>

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (Latest stable version)
- Dart SDK (Included with Flutter)
- Android Studio / Xcode (for mobile development)
- Firebase project with authentication enabled

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/abhikumar0670/Resume_Builder.git
   cd Resume_Builder
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure Firebase**
   - Create a new Firebase project at [Firebase Console](https://console.firebase.google.com/)
   - Enable Authentication and Firestore Database
   - Download configuration files:
     - `google-services.json` for Android (place in `android/app/`)
     - `GoogleService-Info.plist` for iOS (place in `ios/Runner/`)
   - Update `lib/firebase_options.dart` with your Firebase configuration

4. **Set up environment variables**
   - Copy `.env.example` to `.env`
   - Fill in your Firebase and Google Ads configuration

5. **Run the app**
   ```bash
   flutter run
   ```

## 🏗️ Project Structure

```
lib/
├── core/                    # Core functionality
│   ├── ads/                # Advertisement widgets
│   ├── app_exceptions/     # Error handling
│   ├── constants/          # App constants
│   ├── theme/             # App theming
│   ├── usecase/           # Use case abstractions
│   └── widgets/           # Reusable widgets
├── features/              # Feature modules
│   ├── authentication/    # Login/Signup functionality
│   ├── home/             # Home screen and templates
│   ├── profile/          # User profile management
│   └── resume/           # Resume creation and editing
├── firebase_options.dart  # Firebase configuration
└── main.dart             # App entry point
```

## 🔧 Configuration

### Firebase Setup

1. **Authentication**
   - Enable Email/Password authentication
   - Enable Google Sign-In authentication
   - Add your app's SHA-1 fingerprint for Android

2. **Firestore Database**
   - Create a Firestore database
   - Set up security rules for user data

3. **Storage**
   - Enable Firebase Storage for resume files
   - Configure storage security rules

### Environment Variables

Create a `.env` file in the root directory:

```env
# Firebase Configuration
FIREBASE_API_KEY=your_api_key_here
FIREBASE_APP_ID=your_app_id_here
FIREBASE_PROJECT_ID=your_project_id_here

# Google Ads (Optional)
GOOGLE_ADS_APP_ID=your_ads_app_id_here
```

## 📱 Supported Platforms

- ✅ **Android** (API level 21+)
- ✅ **iOS** (iOS 12.0+)
- ✅ **Web** (Chrome, Firefox, Safari, Edge)
- ✅ **Windows** (Windows 10+)
- ✅ **macOS** (macOS 10.14+)
- ✅ **Linux** (Ubuntu 18.04+)

## 🛠️ Built With

- **[Flutter](https://flutter.dev/)** - Cross-platform UI toolkit
- **[Firebase Auth](https://firebase.google.com/products/auth)** - Authentication
- **[Cloud Firestore](https://firebase.google.com/products/firestore)** - NoSQL database
- **[Firebase Storage](https://firebase.google.com/products/storage)** - File storage
- **[PDF](https://pub.dev/packages/pdf)** - PDF generation
- **[Google Sign-In](https://pub.dev/packages/google_sign_in)** - Google authentication
- **[Flutter BLoC](https://pub.dev/packages/flutter_bloc)** - State management
- **[Google Mobile Ads](https://pub.dev/packages/google_mobile_ads)** - Advertisement

## 🎯 How to Use

1. **Launch the application**
2. **Login/Signup** to start creating new resume
3. **Choose** from a variety of sample resumes
4. **Fill the form** with all your details
5. **Generate PDF** of your resume
6. **Name** your generated PDF
7. **Share or Download** the generated resume
8. **Check downloads** on the downloads page

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👤 Author

**Abhishek Kumar**
- GitHub: [@abhikumar0670](https://github.com/abhikumar0670)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Firebase for backend services
- All contributors and testers

## 📞 Support

If you have any questions or need help, please feel free to:
- Open an issue on GitHub
- Contact me via email
- Join our community discussions

---

⭐ If you found this project helpful, please give it a star!