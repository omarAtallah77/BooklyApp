 
# 📚 Bookly App

A Flutter application for discovering and exploring books using the **Google Books API**. Bookly allows users to browse programming books, explore free ebooks, and discover the latest book releases through a clean and organized user interface.

The project is built using **Flutter and Dart**, following Clean Architecture principles and the Repository Pattern to maintain a scalable, maintainable, and testable codebase.

## ✨ Features

- **Book Discovery:** Browse and discover books using the Google Books API.
- **Featured Books:** Explore featured book collections.
- **Newest Books:** Discover recently published books.
- **Programming Books:** Browse books related to programming and technology.
- **Free Ebooks:** Explore available free ebooks.
- **Book Details:** Retrieve detailed information about individual books.
- **API Integration:** Fetch real-time book information from Google Books API.
- **State Management:** Manage application states using Cubit.
- **Error Handling:** Handle API failures and network exceptions using a centralized error-handling approach.
- **Responsive UI:** Build reusable Flutter widgets and organized UI components.

## 🏗️ Project Architecture

The project follows **Clean Architecture** combined with the Repository Pattern to separate responsibilities and make the application easier to maintain and extend.

The application is organized into three main layers:

### 1. Data Layer
Responsible for handling external data sources and transforming API responses into application models.

- **Models:** Parse JSON responses into Dart objects.
- **Repositories:** Implement data-fetching operations.
- **API Service:** Handle HTTP requests using Dio.

### 2. Presentation Layer
Responsible for the user interface and application state management.

- **Views:** Application screens.
- **Widgets:** Reusable UI components.
- **Cubits:** Manage application states and business logic presentation.

### 3. Core Layer
Contains shared functionality used across different application features.

- Error handling and Failure classes.
- API service configuration.
- Dependency injection.
- Shared utilities and reusable components.

## 📂 Project Structure

```text
lib/
│
├── core/
│   ├── errors/
│   │   └── Failures.dart
│   │
│   ├── utils/
│   │   └── api_service.dart
│   │
│   └── ...
│
├── features/
│   │
│   └── Home/
│       │
│       ├── data/
│       │   ├── models/
│       │   │   └── book_model.dart
│       │   │
│       │   └── repos/
│       │       ├── home_repo.dart
│       │       └── home_repo_imp.dart
│       │
│       └── presentation/
│           ├── view/
│           │   ├── widgets/
│           │   └── ...
│           │
│           └── manager/
│               └── ...
│
├── constants/
│
└── main.dart
```

*Note: This is a representative structure based on the files discussed. Update it to match the complete current repository tree.*

## 🧰 Technologies & Packages

The project is developed using the following technologies and packages:

| Package | Purpose |
|---|---|
| [Flutter](https://flutter.dev/) | Cross-platform UI development |
| [Dart](https://dart.dev/) | Programming language |
| [Dio](https://pub.dev/packages/dio) | HTTP client for API requests |
| [Bloc](https://pub.dev/packages/bloc) | State management |
| [Dartz](https://pub.dev/packages/dartz) | Functional programming and Either type for error handling |
| [Cupertino Icons](https://pub.dev/packages/cupertino_icons) | iOS-style icons |
| [Google Fonts](https://pub.dev/packages/google_fonts) | Custom typography |
| [Flutter Bloc](https://pub.dev/packages/flutter_bloc) | Flutter integration for Bloc and Cubit |

## 🌐 API Integration

Bookly uses the **Google Books API** to retrieve book information.

API Base URL:

```text
https://www.googleapis.com/books/v1/
```

Example endpoint:

```text
https://www.googleapis.com/books/v1/volumes?q=programming
```

The API provides book information such as:

- Book title and subtitle.
- Authors.
- Description.
- Publisher and publication date.
- Book cover images.
- Preview links.
- Ratings and reviews.

Official API documentation:

[Google Books API Documentation](https://developers.google.com/books/docs/v1/using)

## ⚙️ Architecture & Implementation Concepts

Some of the main software engineering concepts applied in this project:

- Clean Architecture.
- Repository Pattern.
- Separation of Concerns.
- Dependency Injection.
- Cubit State Management.
- Asynchronous Programming.
- REST API Integration.
- JSON Serialization and Parsing.
- Functional Error Handling using Dartz.
- Reusable Widgets and Components.

## 🚀 Getting Started

### Prerequisites

- Flutter SDK installed.
- Dart SDK.
- Android Studio or VS Code.
- An emulator or physical device.

### Installation

1. Clone the repository:

```bash
git clone YOUR_REPOSITORY_URL
```

2. Navigate to the project directory:

```bash
cd bookly_app
```

3. Install dependencies:

```bash
flutter pub get
```

4. Run the application:

```bash
flutter run
```

## 👨‍💻 Author

**Omar Atallah**

- GitHub: [omarAtallah77](https://github.com/omarAtallah77)
- Portfolio: [My Portfolio](https://omar-atallah.my.canva.site/portfolio)

---

⭐ If you find this project useful, feel free to give it a star!
