# Flutter Mobile App Starter Kit 🎯

***Enterprise-Ready Flutter Application Framework with Layered Architecture***

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

Crafted by **Dilanka Fernando** | Built with [Very Good CLI][very_good_cli_link] 🤖

---

## 📖 Quick Navigation

- [What is This?](#what-is-this)
- [Core Capabilities](#core-capabilities)
- [Setup & Installation](#setup--installation)
- [Architectural Approach](#architectural-approach)
- [Directory Organization](#directory-organization)
- [Environment Configuration](#environment-configuration)
- [Development Workflow](#development-workflow)
- [Quality Assurance](#quality-assurance)
- [Package Ecosystem](#package-ecosystem)
- [Multi-Language Support](#multi-language-support)
- [Upgrade Instructions](#upgrade-instructions)

---

## 🎯 What is This?

This repository serves as a comprehensive starter framework for developing cross-platform mobile applications using Flutter and Dart. The codebase implements a layered architectural pattern that enforces clear boundaries between business logic, data handling, and user interface components.

**Why Use This Framework:**
- 🏗️ Structured codebase following separation of concerns
- 🔄 Reactive state management using BLoC design pattern
- 🔀 Multiple build configurations for different deployment stages
- ✅ Test infrastructure ready for unit and widget testing
- 🌐 Translation system integrated from the start
- 💉 Dependency management through GetIt and Injectable
- ⚙️ Automated code generation pipeline configured

---

## 🚀 Core Capabilities

### 📱 Application Architecture
- **Layered Design Pattern** implementing Domain, Data, and UI separation
- **Modular Feature Organization** for scalable codebases
- **Maintainable Structure** promoting long-term code health

### 🔄 State Management Strategy
- **BLoC Implementation** for predictable state transitions
- **Reactive Programming** leveraging RxDart capabilities
- **Type Safety** ensuring compile-time correctness

### 🛠️ Development Tools
- **Live Reload** functionality for rapid iteration
- **Automated Code Generation** via build_runner
- **Code Quality Automation** with linting and formatting
- **Command Shortcuts** through Makefile integration

### 🌍 Localization
- **Multi-Locale Support** configured and ready
- **ARB-Based Translations** for easy management
- **Extensible System** for adding new languages

### 📲 Target Platforms
- ✅ iOS applications
- ✅ Android applications
- 🔜 Web support (planned)
- 🔜 Desktop support (planned)

---

## 💻 Setup & Installation

### Requirements

Before you begin, ensure you have:
- Flutter SDK version `3.6.0` or higher (but less than `4.0.0`)
- Dart SDK (included with Flutter installation)
- Android Studio or Xcode for platform-specific development
- [FVM](https://fvm.app/) (recommended for version management)

### Quick Start Guide

**Step 1: Get the Code**
```bash
git clone https://github.com/dilankafernando/dilankaf-flutter-clean-arch.git
cd dilankaf-flutter-clean-arch
```

**Step 2: Install Required Packages**
```bash
flutter pub get
```

**Step 3: Generate Supporting Code**
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

**Step 4: Launch the Application**

Choose your environment:
```bash
# Development environment
flutter run --flavor development --target lib/main_development.dart

# Staging environment
flutter run --flavor staging --target lib/main_staging.dart

# Production environment
flutter run --flavor production --target lib/main_production.dart
```

### Project Configuration

After obtaining the code, adjust these settings:

1. **Package Identifier**: Modify `pubspec.yaml` - replace `flutter_clean_arch` with your chosen package name
2. **Application Bundle ID**: Update Android (`android/app/build.gradle`) and iOS (`ios/Runner.xcodeproj/project.pbxproj`) bundle identifiers from `com.dilankaf.cleanarch` to your preferred identifier
3. **Application Display Name**: Configure app names in both Android and iOS settings
4. **Source Code References**: Update repository URLs in code comments if needed

---

## 🏗️ Architectural Approach

This codebase adheres to **Layered Architecture** methodology, dividing the application into distinct tiers:

### Visual Representation

```
╔═══════════════════════════════════════════════════════╗
║              USER INTERFACE TIER                      ║
║  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐   ║
║  │   Screens    │  │   BLoCs     │  │  Components │   ║
║  └─────────────┘  └─────────────┘  └─────────────┘   ║
╚═══════════════════════════════════════════════════════╝
                            ⬇️
╔═══════════════════════════════════════════════════════╗
║            BUSINESS LOGIC TIER                        ║
║  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐   ║
║  │  Domain     │  │ Business     │  │ Repository  │   ║
║  │  Models     │  │ Rules        │  │ Contracts   │   ║
║  └─────────────┘  └─────────────┘  └─────────────┘   ║
╚═══════════════════════════════════════════════════════╝
                            ⬇️
╔═══════════════════════════════════════════════════════╗
║              DATA PERSISTENCE TIER                     ║
║  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐   ║
║  │ Remote      │  │ Data        │  │ Repository  │   ║
║  │ Services    │  │ Transfer    │  │ Concrete    │   ║
║  │             │  │ Objects     │  │ Classes     │   ║
║  └─────────────┘  └─────────────┘  └─────────────┘   ║
╚═══════════════════════════════════════════════════════╝
```

### Tier Responsibilities

**🖥️ User Interface Tier**
- Screen layouts and visual components
- State management through BLoC pattern
- User input handling and interactions
- Relies on: Business Logic Tier

**🧠 Business Logic Tier**
- Application rules and use cases
- Domain model definitions
- Repository contract definitions
- Independent of other tiers

**💿 Data Persistence Tier**
- External API integration
- Local database operations
- Data transfer object transformations
- Repository concrete implementations
- Relies on: Business Logic Tier

---

## 📁 Directory Organization

```
dilankaf-flutter-clean-arch/
│
├── 📂 assets/
│   ├── fonts/              # Custom typefaces
│   ├── google_fonts/       # Offline Google Fonts
│   ├── icons/              # Application icons
│   └── images/             # Image resources
│
├── 📂 lib/
│   ├── 📂 app/            # Application-wide setup
│   │   ├── router/        # Route definitions
│   │   └── view/          # Root application widget
│   │
│   ├── 📂 core/           # Foundation utilities
│   │   ├── di/            # Dependency injection setup
│   │   ├── domain/        # Base domain models and error types
│   │   ├── extensions/    # Language and framework extensions
│   │   ├── presentation/  # Presentation layer utilities
│   │   ├── storages/      # Storage abstraction layer
│   │   └── utils/         # Shared constants and helpers
│   │
│   ├── 📂 features/       # Application features
│   │   └── counter/       # Sample feature module
│   │       ├── data/      # Data tier components
│   │       │   ├── datasources/    # External data access
│   │       │   ├── models/         # Data transfer objects
│   │       │   └── repositories/   # Repository implementations
│   │       ├── domain/    # Business logic tier
│   │       │   ├── entities/      # Domain models
│   │       │   ├── repositories/   # Repository interfaces
│   │       │   └── usecases/       # Business operations
│   │       └── presentation/       # User interface tier
│   │           ├── blocs/          # BLoC state handlers
│   │           ├── pages/          # Screen implementations
│   │           └── widgets/       # Reusable UI components
│   │
│   ├── 📂 shared/         # Cross-feature utilities
│   │   ├── domain/        # Shared domain models
│   │   └── flash/         # User notification system
│   │
│   ├── 📂 l10n/           # Translation resources
│   │   └── arb/          # Application Resource Bundle files
│   │
│   ├── main_development.dart
│   ├── main_staging.dart
│   ├── main_production.dart
│   ├── bootstrap.dart
│   └── injector.dart
│
└── 📂 test/              # Test suites
    ├── helpers/          # Testing utilities
    └── fixtures/          # Test data files
```

---

## 🔀 Environment Configuration

This framework supports three distinct build configurations for various deployment scenarios:

| Configuration | Purpose | Bundle Identifier Modification |
|--------------|---------|-------------------------------|
| **development** | Local development and debugging | `.dev` suffix |
| **staging** | Quality assurance and pre-release testing | `.stg` suffix |
| **production** | Public release builds | No suffix |

### Executing Different Configurations

```bash
# Development mode
flutter run --flavor development --target lib/main_development.dart

# Staging mode
flutter run --flavor staging --target lib/main_staging.dart

# Production mode
flutter run --flavor production --target lib/main_production.dart
```

Each configuration allows for:
- Distinct API server endpoints
- Unique application icons
- Customized application titles
- Environment-specific configuration values

---

## ⚡ Development Workflow

This project provides a `Makefile` containing streamlined commands for frequent development tasks. Customize environment variables within the `Makefile` as required.

### Code Generation Tasks
```bash
make build          # Execute build_runner once
make watch          # Monitor files and regenerate automatically
```

### Application Builds
```bash
# Android application packages
make apk-dev        # Development Android package
make apk-stg        # Staging Android package
make apk-prod       # Production Android package

# iOS application packages
make ipa-dev        # Development iOS package
make ipa-stg        # Staging iOS package
make ipa-prod       # Production iOS package
```

### Code Quality Tasks
```bash
make fix            # Apply automatic code fixes
make check-fix      # Verify if fixes can be applied
```

Refer to the [Makefile][makefile_link] for complete command documentation and environment variable configuration.

---

## 🧪 Quality Assurance

### Executing Test Suites

```bash
# Run complete test suite with coverage metrics
flutter test --coverage --test-randomize-ordering-seed random
```

### Generating Coverage Reports

```bash
# Create HTML coverage report
genhtml coverage/lcov.info -o coverage/

# View coverage report (macOS)
open coverage/index.html

# View coverage report (Linux)
xdg-open coverage/index.html
```

### Test Organization

Test files replicate the `lib/` directory structure:
- Unit tests covering business logic
- Widget tests for UI component validation
- Integration tests for end-to-end feature flows
- Reusable test utilities and mock data

---

## 📦 Package Ecosystem

This framework includes a curated selection of packages to expedite development:

### State Management Packages
| Package | Function | Version |
|---------|----------|---------|
| `bloc` | Core state management | ^8.1.4 |
| `flutter_bloc` | Flutter BLoC integration | ^8.1.6 |

### Navigation Packages
| Package | Function |
|---------|----------|
| `go_router` | Declarative routing solution | ^14.6.2 |

### Code Generation Packages
| Package | Function |
|---------|----------|
| `build_runner` | Code generation orchestration | ^2.7.1 |
| `flutter_gen_runner` | Asset code generation | ^5.8.0 |
| `injectable` | Dependency injection annotations | ^2.5.0 |
| `injectable_generator` | Dependency injection code generation | ^2.6.2 |

### Utility Packages
| Package | Function |
|---------|----------|
| `dartz` | Functional programming utilities | ^0.10.1 |
| `rxdart` | Reactive extensions for Dart | ^0.28.0 |
| `equatable` | Value-based equality | ^2.0.7 |
| `formz` | Form validation framework | ^0.8.0 |
| `flutter_screenutil` | Responsive UI utilities | ^5.9.3 |
| `google_fonts` | Typography management | ^6.2.1 |

### Testing Packages
| Package | Function |
|---------|----------|
| `mocktail` | Mocking framework | ^1.0.4 |
| `bloc_test` | BLoC testing utilities | ^9.1.7 |

> **Important**: All listed packages are compatible with Flutter 3.6+ and receive regular updates.

View [pubspec.yaml](pubspec.yaml) for the complete dependency list.

---

## 🌐 Multi-Language Support

This framework utilizes Flutter's built-in internationalization system for multi-language support.

### Adding Translation Strings

1. Open `lib/l10n/arb/app_en.arb` (or your primary locale file)
2. Insert your translation entry:

```json
{
    "@@locale": "en",
    "greetingText": "Hello from CleanArch!",
    "@greetingText": {
        "description": "Greeting displayed on the welcome screen"
    }
}
```

3. Reference in your code:

```dart
import 'package:flutter_clean_arch/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.greetingText);
}
```

### Supporting Additional Languages

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

3. Populate the new ARB file with translations

### Currently Supported Languages

- 🇺🇸 English (`en`)
- 🇮🇩 Indonesian (`id`)

---

## 🔄 Upgrade Instructions

### Migrating from Earlier Versions

If upgrading from a previous version of this framework, follow these guidelines:

#### 1. Flutter SDK Requirements
- Verify Flutter SDK version `>=3.6.0 <4.0.0`
- Consider installing [FVM](https://fvm.app/) for version control
- Execute `fvm use` if `.fvmrc` is present

#### 2. Code Generation Updates
- Freezed-based code generation has been eliminated
- Sealed classes serve as replacements
- Update `Failure` and `ValueFailure` usages to the new sealed class implementations

#### 3. Android Build System Updates
- Gradle version upgraded to **8.3**
- Java compatibility updated to version **17**
- Verify your Java installation supports Java 17

#### 4. Package Updates
- Review `pubspec.yaml` for version changes
- Execute `flutter pub get` to refresh dependencies
- Remove obsolete code generation packages if no longer needed

#### 5. Test Suite Updates
- Update test imports to align with new file organization
- Replace Freezed-specific test methods with sealed class alternatives

---

## 🤝 Contributing

We welcome contributions! Feel free to propose improvements via Pull Requests.

1. Fork this repository
2. Create a feature branch (`git checkout -b feature/YourFeatureName`)
3. Commit your modifications (`git commit -m 'Implement YourFeatureName'`)
4. Push to your branch (`git push origin feature/YourFeatureName`)
5. Open a Pull Request

---

## 📄 License

This project is distributed under the MIT License. See the [LICENSE](LICENSE) file for complete details.

---

## 👨‍💻 Creator

**Dilanka Fernando**

- GitHub Profile: [@dilankafernando](https://github.com/dilankafernando)
- Project Repository: [dilankaf-flutter-clean-arch](https://github.com/dilankafernando/dilankaf-flutter-clean-arch)

---

## 🙏 Credits

- [Very Good CLI](https://github.com/VeryGoodOpenSource/very_good_cli) for initial project structure
- [BLoC Library](https://bloclibrary.dev/) for state management patterns
- Flutter team for the excellent framework

---

## 💬 Getting Help

For questions or assistance:
- Create an issue on GitHub
- Browse existing issues and discussions
- Review the documentation

---

**Enjoy Building! 🚀**

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
[makefile_link]: Makefile
