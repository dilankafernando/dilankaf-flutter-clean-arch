# Flutter Clean Architecture Mobile Template 🚀

***A Production-Ready Flutter Project Template Following Clean Architecture Principles***

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

Built with [Very Good CLI][very_good_cli_link] 🤖 | Created by **Dilanka Fernando**

---

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Architecture](#architecture)
- [Available Flavors](#available-flavors)
- [Makefile Commands](#makefile-commands)
- [Testing](#testing)
- [Dependencies](#dependencies)
- [Internationalization](#internationalization)
- [Migration Guide](#migration-guide)

---

## 🎯 Overview

This template provides a solid foundation for building Flutter mobile applications using Clean Architecture principles. It includes all the essential tools, libraries, and project structure needed to kickstart your development journey with best practices from day one.

**Key Highlights:**
- ✅ Clean Architecture with clear separation of concerns
- ✅ BLoC pattern for state management
- ✅ Multi-flavor support (Development, Staging, Production)
- ✅ Comprehensive test coverage setup
- ✅ Internationalization ready
- ✅ Dependency injection configured
- ✅ Code generation tools pre-configured

---

## ✨ Features

### 🏗️ Architecture
- **Clean Architecture** with Domain, Data, and Presentation layers
- **Feature-based** module organization
- **Separation of concerns** for maintainability and scalability

### 🎨 State Management
- **BLoC pattern** implementation
- **Reactive programming** with RxDart
- **Type-safe** state handling

### 🔧 Developer Experience
- **Hot reload** and hot restart support
- **Code generation** with build_runner
- **Automated linting** and code formatting
- **Makefile** shortcuts for common tasks

### 🌍 Internationalization
- **Multi-language** support out of the box
- **ARB files** for translations
- **Easy to extend** with new locales

### 📱 Platform Support
- ✅ iOS
- ✅ Android
- ✅ Web (coming soon)
- ✅ Linux (coming soon)
- ✅ Windows (coming soon)

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK `>=3.6.0 <4.0.0`
- Dart SDK (comes with Flutter)
- Android Studio / Xcode (for mobile development)
- [FVM](https://fvm.app/) (optional, for Flutter version management)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/dilankaf/flutter-mobile-clean-architecture-template.git
   cd flutter-mobile-clean-architecture-template
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate code**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**
   ```bash
   # Development
   flutter run --flavor development --target lib/main_development.dart
   
   # Staging
   flutter run --flavor staging --target lib/main_staging.dart
   
   # Production
   flutter run --flavor production --target lib/main_production.dart
   ```

### Customization

After cloning, customize the following:

1. **Package Name**: Update `pubspec.yaml` - change `flutter_clean_arch` to your package name
2. **Bundle Identifier**: Update Android (`android/app/build.gradle`) and iOS (`ios/Runner.xcodeproj/project.pbxproj`) bundle identifiers from `com.dilankaf.cleanarch` to your own
3. **App Name**: Update app display names in Android and iOS configurations
4. **GitHub URLs**: Replace references in source code comments with your repository URL

---

## 🏛️ Project Structure

```
flutter-mobile-clean-architecture-template/
│
├── 📁 assets/
│   ├── fonts/              # Custom fonts
│   ├── google_fonts/       # Google Fonts (offline)
│   ├── icons/              # App icons
│   └── images/             # Image assets
│
├── 📁 lib/
│   ├── 📁 app/            # App-level configuration
│   │   ├── router/        # Navigation & routing
│   │   └── view/          # Root app widget
│   │
│   ├── 📁 core/           # Core utilities & base classes
│   │   ├── di/            # Dependency injection modules
│   │   ├── domain/        # Base domain entities & failures
│   │   ├── extensions/    # Dart & Flutter extensions
│   │   ├── presentation/  # Presentation mixins & utilities
│   │   ├── storages/      # Local storage abstractions
│   │   └── utils/         # Constants, colors, dimensions
│   │
│   ├── 📁 features/       # Feature modules
│   │   └── counter/       # Example feature
│   │       ├── data/      # Data layer
│   │       │   ├── datasources/    # API & local data sources
│   │       │   ├── models/         # DTOs & data models
│   │       │   └── repositories/   # Repository implementations
│   │       ├── domain/    # Domain layer
│   │       │   ├── entities/      # Business entities
│   │       │   ├── repositories/   # Repository interfaces
│   │       │   └── usecases/       # Business logic
│   │       └── presentation/       # Presentation layer
│   │           ├── blocs/          # BLoC state management
│   │           ├── pages/          # UI pages/screens
│   │           └── widgets/       # Feature-specific widgets
│   │
│   ├── 📁 shared/         # Shared code across features
│   │   ├── domain/        # Shared domain entities
│   │   └── flash/         # Flash message system
│   │
│   ├── 📁 l10n/           # Localization
│   │   └── arb/          # ARB translation files
│   │
│   ├── main_development.dart
│   ├── main_staging.dart
│   ├── main_production.dart
│   ├── bootstrap.dart
│   └── injector.dart
│
└── 📁 test/              # Test files mirror lib structure
    ├── helpers/          # Test utilities
    └── fixtures/          # Test data fixtures
```

---

## 🏗️ Architecture

This project follows **Clean Architecture** principles, organizing code into three main layers:

### Architecture Diagram

```
┌─────────────────────────────────────────────────────────┐
│                    PRESENTATION LAYER                    │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐ │
│  │    Pages     │  │    BLoCs     │  │   Widgets    │ │
│  └──────────────┘  └──────────────┘  └──────────────┘ │
└─────────────────────────────────────────────────────────┘
                           ⬇️
┌─────────────────────────────────────────────────────────┐
│                     DOMAIN LAYER                         │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐ │
│  │  Entities    │  │ Use Cases    │  │ Repositories │ │
│  │              │  │              │  │  (Interface) │ │
│  └──────────────┘  └──────────────┘  └──────────────┘ │
└─────────────────────────────────────────────────────────┘
                           ⬇️
┌─────────────────────────────────────────────────────────┐
│                      DATA LAYER                          │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐ │
│  │ Data Sources │  │    Models    │  │ Repositories │ │
│  │  (API/Local) │  │   (DTOs)     │  │ (Implementation)│
│  └──────────────┘  └──────────────┘  └──────────────┘ │
└─────────────────────────────────────────────────────────┘
```

### Layer Responsibilities

**📱 Presentation Layer**
- UI components (Pages, Widgets)
- State management (BLoCs)
- User interactions
- Depends on: Domain Layer

**💼 Domain Layer**
- Business logic (Use Cases)
- Domain entities
- Repository interfaces
- No dependencies on other layers

**💾 Data Layer**
- API communication
- Local storage
- Data models (DTOs)
- Repository implementations
- Depends on: Domain Layer

---

## 🔀 Available Flavors

This project supports three build flavors for different environments:

| Flavor | Description | Bundle ID Suffix |
|--------|-------------|------------------|
| **development** | For local development and testing | `.dev` |
| **staging** | For QA and pre-production testing | `.stg` |
| **production** | For release builds | *(none)* |

### Running Flavors

```bash
# Development
flutter run --flavor development --target lib/main_development.dart

# Staging
flutter run --flavor staging --target lib/main_staging.dart

# Production
flutter run --flavor production --target lib/main_production.dart
```

Each flavor can have:
- Different API endpoints
- Different app icons
- Different app names
- Different configuration values

---

## 💻 Makefile Commands

This project includes a `Makefile` with convenient shortcuts for common tasks. Update environment variables in the `Makefile` as needed.

### Code Generation
```bash
make build          # Run build_runner once
make watch          # Watch for file changes and auto-generate
```

### Build Commands
```bash
# Android APKs
make apk-dev        # Development APK
make apk-stg        # Staging APK
make apk-prod       # Production APK

# iOS IPAs
make ipa-dev        # Development IPA
make ipa-stg        # Staging IPA
make ipa-prod       # Production IPA
```

### Code Quality
```bash
make fix            # Auto-fix code issues
make check-fix      # Check if code can be auto-fixed
```

See [Makefile][makefile_link] for all available commands and environment variables.

---

## 🧪 Testing

### Running Tests

```bash
# Run all tests with coverage
flutter test --coverage --test-randomize-ordering-seed random
```

### Viewing Coverage

```bash
# Generate HTML coverage report
genhtml coverage/lcov.info -o coverage/

# Open coverage report (macOS)
open coverage/index.html

# Open coverage report (Linux)
xdg-open coverage/index.html
```

### Test Structure

Tests mirror the `lib/` directory structure:
- Unit tests for business logic
- Widget tests for UI components
- Integration tests for feature flows
- Test helpers and fixtures for reusable test code

---

## 📚 Dependencies

This template includes carefully selected libraries to accelerate development:

### State Management
| Package | Purpose | Version |
|---------|---------|---------|
| `bloc` | State management core | ^8.1.4 |
| `flutter_bloc` | BLoC Flutter integration | ^8.1.6 |
| `bloc_concurrency` | Concurrency utilities | - |

### Navigation
| Package | Purpose |
|---------|---------|
| `go_router` | Declarative routing | ^14.6.2 |

### Code Generation
| Package | Purpose |
|---------|---------|
| `build_runner` | Code generation tool | ^2.7.1 |
| `flutter_gen_runner` | Asset generation | ^5.8.0 |
| `injectable` | Dependency injection | ^2.5.0 |
| `injectable_generator` | DI code generator | ^2.6.2 |

### Utilities
| Package | Purpose |
|---------|---------|
| `dartz` | Functional programming | ^0.10.1 |
| `rxdart` | Reactive extensions | ^0.28.0 |
| `equatable` | Value equality | ^2.0.7 |
| `formz` | Form validation | ^0.8.0 |
| `flutter_screenutil` | Responsive design | ^5.9.3 |
| `google_fonts` | Typography | ^6.2.1 |

### Testing
| Package | Purpose |
|---------|---------|
| `mocktail` | Mocking framework | ^1.0.4 |
| `bloc_test` | BLoC testing utilities | ^9.1.7 |

> **Note**: All dependencies are compatible with Flutter 3.6+ and are regularly updated.

For the complete list, see [pubspec.yaml](pubspec.yaml).

---

## 🌐 Internationalization

This project supports multiple languages using Flutter's official i18n system.

### Adding New Strings

1. Open `lib/l10n/arb/app_en.arb` (or your base locale)
2. Add your string:

```json
{
    "@@locale": "en",
    "welcomeMessage": "Welcome to CleanArch!",
    "@welcomeMessage": {
        "description": "Welcome message displayed on home screen"
    }
}
```

3. Use in code:

```dart
import 'package:flutter_clean_arch/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.welcomeMessage);
}
```

### Adding New Locales

1. Create a new ARB file: `lib/l10n/arb/app_<locale>.arb`
2. Update `ios/Runner/Info.plist`:

```xml
<key>CFBundleLocalizations</key>
<array>
    <string>en</string>
    <string>id</string>
    <string>es</string>
</array>
```

3. Add translations to your new ARB file

### Supported Locales

Currently supported:
- 🇺🇸 English (`en`)
- 🇮🇩 Indonesian (`id`)

---

## 🔄 Migration Guide

### From Previous Versions

If you're migrating from an older version of this template, follow these steps:

#### 1. Flutter Version
- Ensure Flutter SDK `>=3.6.0 <4.0.0`
- Install [FVM](https://fvm.app/) if using version management
- Run `fvm use` if `.fvmrc` exists

#### 2. Code Generation Changes
- Freezed code generation has been removed
- Sealed classes are now used instead
- Update `Failure` and `ValueFailure` references to new sealed class implementations

#### 3. Android Updates
- Gradle upgraded to **8.3**
- Java compatibility set to **17**
- Update your local Java installation if needed

#### 4. Dependencies
- Review `pubspec.yaml` for version updates
- Run `flutter pub get` to update dependencies
- Remove unused code generation packages if applicable

#### 5. Testing
- Update test imports to match new file structure
- Replace Freezed-specific test methods with sealed class alternatives

For detailed migration instructions, see the [Migration Guide](#migration-guide) section above.

---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👤 Author

**Dilanka Fernando**

- GitHub: [@dilankaf](https://github.com/dilankaf)
- Repository: [flutter-mobile-clean-architecture-template](https://github.com/dilankaf/flutter-mobile-clean-architecture-template)

---

## 🙏 Acknowledgments

- [Very Good CLI](https://github.com/VeryGoodOpenSource/very_good_cli) for project scaffolding
- [BLoC](https://bloclibrary.dev/) for state management
- Flutter team for the amazing framework

---

## 📞 Support

If you have any questions or need help, please:
- Open an issue on GitHub
- Check existing issues and discussions
- Review the documentation

---

**Happy Coding! 🎉**

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
[makefile_link]: Makefile
