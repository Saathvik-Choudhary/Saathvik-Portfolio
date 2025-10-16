# Deployment Guide

This guide covers various deployment options for the Saathvik Portfolio Flutter application.

## 🌐 Web Deployment

### GitHub Pages

1. **Build for Web**
   ```bash
   flutter build web --release
   ```

2. **Configure GitHub Pages**
   - Go to repository Settings > Pages
   - Select source as "GitHub Actions"
   - Create `.github/workflows/deploy.yml`:

   ```yaml
   name: Deploy to GitHub Pages
   
   on:
     push:
       branches: [ main ]
   
   jobs:
     build-and-deploy:
       runs-on: ubuntu-latest
       steps:
         - uses: actions/checkout@v3
         
         - name: Setup Flutter
           uses: subosito/flutter-action@v2
           with:
             flutter-version: '3.5.3'
             
         - name: Install dependencies
           run: flutter pub get
           
         - name: Build web
           run: flutter build web --release
           
         - name: Deploy to GitHub Pages
           uses: peaceiris/actions-gh-pages@v3
           with:
             github_token: ${{ secrets.GITHUB_TOKEN }}
             publish_dir: ./build/web
   ```

### Netlify

1. **Build Configuration**
   Create `netlify.toml`:
   ```toml
   [build]
     command = "flutter build web --release"
     publish = "build/web"
   
   [[redirects]]
     from = "/*"
     to = "/index.html"
     status = 200
   ```

2. **Deploy**
   - Connect repository to Netlify
   - Set build command: `flutter build web --release`
   - Set publish directory: `build/web`

### Vercel

1. **Build Configuration**
   Create `vercel.json`:
   ```json
   {
     "buildCommand": "flutter build web --release",
     "outputDirectory": "build/web",
     "rewrites": [
       {
         "source": "/(.*)",
         "destination": "/index.html"
       }
     ]
   }
   ```

2. **Deploy**
   - Connect repository to Vercel
   - Vercel will automatically detect Flutter and configure build

### Firebase Hosting

1. **Install Firebase CLI**
   ```bash
   npm install -g firebase-tools
   ```

2. **Initialize Firebase**
   ```bash
   firebase init hosting
   ```

3. **Configure `firebase.json`**
   ```json
   {
     "hosting": {
       "public": "build/web",
       "ignore": [
         "firebase.json",
         "**/.*",
         "**/node_modules/**"
       ],
       "rewrites": [
         {
           "source": "**",
           "destination": "/index.html"
         }
       ]
     }
   }
   ```

4. **Deploy**
   ```bash
   flutter build web --release
   firebase deploy
   ```

## 📱 Mobile Deployment

### Android

1. **Build APK**
   ```bash
   flutter build apk --release
   ```

2. **Build App Bundle (Recommended)**
   ```bash
   flutter build appbundle --release
   ```

3. **Upload to Google Play Console**
   - Sign in to [Google Play Console](https://play.google.com/console)
   - Create new app or update existing
   - Upload the `.aab` file
   - Complete store listing and release

### iOS

1. **Build for iOS**
   ```bash
   flutter build ios --release
   ```

2. **Archive in Xcode**
   - Open `ios/Runner.xcworkspace` in Xcode
   - Select "Any iOS Device" as target
   - Product > Archive
   - Upload to App Store Connect

3. **App Store Connect**
   - Sign in to [App Store Connect](https://appstoreconnect.apple.com)
   - Create new app or update existing
   - Upload build and complete submission

## 🖥️ Desktop Deployment

### Windows

1. **Build Windows App**
   ```bash
   flutter build windows --release
   ```

2. **Create Installer**
   - Use tools like Inno Setup or NSIS
   - Package the `build/windows/runner/Release/` folder
   - Create installer executable

### macOS

1. **Build macOS App**
   ```bash
   flutter build macos --release
   ```

2. **Create DMG**
   - Use tools like create-dmg
   - Package the `.app` file into a DMG
   - Sign and notarize for distribution

### Linux

1. **Build Linux App**
   ```bash
   flutter build linux --release
   ```

2. **Create Package**
   - Create `.deb` package for Debian/Ubuntu
   - Create `.rpm` package for Red Hat/Fedora
   - Use tools like `dpkg-deb` or `rpmbuild`

## 🐳 Docker Deployment

### Web with Docker

1. **Create Dockerfile**
   ```dockerfile
   FROM ubuntu:20.04
   
   # Install dependencies
   RUN apt-get update && apt-get install -y \
     curl \
     git \
     unzip \
     xz-utils \
     zip \
     libglu1-mesa \
     && rm -rf /var/lib/apt/lists/*
   
   # Install Flutter
   RUN git clone https://github.com/flutter/flutter.git /flutter
   ENV PATH="/flutter/bin:/flutter/bin/cache/dart-sdk/bin:${PATH}"
   
   # Set working directory
   WORKDIR /app
   
   # Copy project files
   COPY . .
   
   # Get dependencies
   RUN flutter pub get
   
   # Build web
   RUN flutter build web --release
   
   # Serve with nginx
   FROM nginx:alpine
   COPY --from=0 /app/build/web /usr/share/nginx/html
   EXPOSE 80
   CMD ["nginx", "-g", "daemon off;"]
   ```

2. **Build and Run**
   ```bash
   docker build -t saathvik-portfolio .
   docker run -p 80:80 saathvik-portfolio
   ```

## ☁️ Cloud Deployment

### AWS

1. **AWS Amplify**
   - Connect repository to Amplify
   - Configure build settings:
     ```yaml
     version: 1
     frontend:
       phases:
         preBuild:
           commands:
             - npm install -g @aws-amplify/cli
             - flutter pub get
         build:
           commands:
             - flutter build web --release
       artifacts:
         baseDirectory: build/web
         files:
           - '**/*'
       cache:
         paths:
           - .pub-cache/**/*
   ```

2. **AWS S3 + CloudFront**
   - Build the web app
   - Upload to S3 bucket
   - Configure CloudFront distribution
   - Set up custom domain

### Google Cloud Platform

1. **Google Cloud Run**
   - Create Dockerfile (see Docker section)
   - Build and push to Google Container Registry
   - Deploy to Cloud Run

2. **Google App Engine**
   - Create `app.yaml`:
     ```yaml
     runtime: custom
     env: flex
     ```
   - Deploy with `gcloud app deploy`

### Azure

1. **Azure Static Web Apps**
   - Connect repository to Azure Static Web Apps
   - Configure build settings in GitHub Actions
   - Deploy automatically on push

2. **Azure App Service**
   - Create Dockerfile
   - Deploy container to App Service
   - Configure custom domain

## 🔧 Environment Configuration

### Environment Variables

Create environment-specific configuration:

```dart
// lib/config/environment.dart
class Environment {
  static const String apiUrl = String.fromEnvironment('API_URL', defaultValue: 'https://api.example.com');
  static const String appName = String.fromEnvironment('APP_NAME', defaultValue: 'Saathvik Portfolio');
  static const bool isProduction = bool.fromEnvironment('dart.vm.product');
}
```

### Build Configurations

```bash
# Development
flutter run --dart-define=ENVIRONMENT=development

# Staging
flutter build web --dart-define=ENVIRONMENT=staging

# Production
flutter build web --dart-define=ENVIRONMENT=production --release
```

## 📊 Performance Optimization

### Web Performance

1. **Enable Tree Shaking**
   ```bash
   flutter build web --tree-shake-icons
   ```

2. **Optimize Assets**
   - Compress images
   - Use WebP format
   - Implement lazy loading

3. **Code Splitting**
   - Use deferred imports
   - Implement route-based splitting

### Mobile Performance

1. **Enable R8/ProGuard**
   ```gradle
   // android/app/build.gradle
   buildTypes {
     release {
       minifyEnabled true
       proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
     }
   }
   ```

2. **Optimize Images**
   - Use appropriate image formats
   - Implement caching
   - Use placeholder images

## 🔒 Security Considerations

### Web Security

1. **Content Security Policy**
   ```html
   <meta http-equiv="Content-Security-Policy" content="default-src 'self'; script-src 'self' 'unsafe-inline';">
   ```

2. **HTTPS**
   - Always use HTTPS in production
   - Configure proper SSL certificates

3. **Environment Variables**
   - Never expose sensitive data in client-side code
   - Use secure environment variable management

### Mobile Security

1. **Code Obfuscation**
   ```bash
   flutter build apk --obfuscate --split-debug-info=debug-info
   ```

2. **Certificate Pinning**
   - Implement certificate pinning for API calls
   - Use secure storage for sensitive data

## 📈 Monitoring and Analytics

### Error Tracking

1. **Sentry Integration**
   ```dart
   import 'package:sentry_flutter/sentry_flutter.dart';
   
   void main() {
     SentryFlutter.init(
       (options) {
         options.dsn = 'YOUR_SENTRY_DSN';
       },
       appRunner: () => runApp(MyApp()),
     );
   }
   ```

2. **Firebase Crashlytics**
   ```dart
   import 'package:firebase_crashlytics/firebase_crashlytics.dart';
   
   void main() {
     FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
     runApp(MyApp());
   }
   ```

### Analytics

1. **Google Analytics**
   ```dart
   import 'package:google_analytics_4/google_analytics_4.dart';
   
   void main() {
     GoogleAnalytics4.init('YOUR_GA4_MEASUREMENT_ID');
     runApp(MyApp());
   }
   ```

2. **Firebase Analytics**
   ```dart
   import 'package:firebase_analytics/firebase_analytics.dart';
   
   final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
   ```

## 🚀 CI/CD Pipeline

### GitHub Actions

```yaml
name: CI/CD Pipeline

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main ]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.5.3'
      - run: flutter pub get
      - run: flutter test
      - run: flutter analyze

  build-web:
    needs: test
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/main'
    steps:
      - uses: actions/checkout@v3
      - uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.5.3'
      - run: flutter pub get
      - run: flutter build web --release
      - uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./build/web

  build-android:
    needs: test
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/main'
    steps:
      - uses: actions/checkout@v3
      - uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.5.3'
      - run: flutter pub get
      - run: flutter build appbundle --release
      - uses: actions/upload-artifact@v3
        with:
          name: app-bundle
          path: build/app/outputs/bundle/release/app-release.aab
```

## 📋 Deployment Checklist

### Pre-Deployment

- [ ] All tests passing
- [ ] Code review completed
- [ ] Documentation updated
- [ ] Environment variables configured
- [ ] Security scan completed
- [ ] Performance testing done

### Deployment

- [ ] Build successful
- [ ] Deployment to staging successful
- [ ] Smoke tests passed
- [ ] Production deployment completed
- [ ] Monitoring configured
- [ ] Rollback plan ready

### Post-Deployment

- [ ] Health checks passing
- [ ] Analytics tracking
- [ ] Error monitoring active
- [ ] Performance metrics normal
- [ ] User feedback collected
- [ ] Documentation updated

## 🆘 Troubleshooting

### Common Issues

1. **Build Failures**
   - Check Flutter version compatibility
   - Verify all dependencies are compatible
   - Clear build cache: `flutter clean`

2. **Deployment Issues**
   - Check environment variables
   - Verify build configuration
   - Review deployment logs

3. **Performance Issues**
   - Enable performance profiling
   - Check for memory leaks
   - Optimize asset loading

### Getting Help

- **GitHub Issues**: Report deployment issues
- **Flutter Documentation**: Check official docs
- **Community Forums**: Stack Overflow, Reddit
- **Email**: saathvikchoudhary@gmail.com

---

**Note**: This deployment guide is regularly updated. Please check for the latest version before deploying.
