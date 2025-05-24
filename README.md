
# 🎵 SRocksMusic Assignment

A Flutter-based cross-platform music assignment app structured using the MVVM (Model-View-ViewModel) architectural pattern. This project is organized for scalability, maintainability, and ease of testing.

---

## 🚀 Project Structure

```
.
├── android/                # Android-specific code
├── ios/                    # iOS-specific code
├── linux/                  # Linux-specific code
├── macos/                  # macOS-specific code
├── windows/                # Windows-specific code
├── web/                    # Web-specific code
├── assets/                 # App assets (images, icons, etc.)
├── google_fonts/           # Fonts and typography assets
├── build/                  # Auto-generated build files
├── .dart_tool/             # Dart tool-related files
├── .idea/                  # IntelliJ/Android Studio project files
├── .git/                   # Git version control directory
├── lib/                    # Main application code
│   ├── model/              # Business models and data structures
│   ├── view/               # UI widgets and screens
│   ├── view_model/         # Application logic and state management
│   └── main.dart           # Entry point of the application
├── test/                   # Unit and widget tests
├── .flutter-plugins-dependencies
├── .gitignore
├── .metadata
├── analysis_options.yaml  # Linter rules and static analysis options
├── pubspec.yaml           # Project dependencies and metadata
├── pubspec.lock           # Locked versions of dependencies
├── srocksmusic_assignment.iml
└── README.md              # Project overview and documentation
```

---

## 🧠 Architecture Overview (MVVM)

- **Model** (`lib/model/`)  
  Holds the business logic, data structures, and parsing logic for handling API responses or local data.

- **View** (`lib/view/`)  
  Contains all UI components including screens and reusable widgets, ensuring a clean separation from business logic.

- **ViewModel** (`lib/view_model/`)  
  Acts as a bridge between the Model and View, handling state management and business logic. This allows the UI to be reactive and testable.

---

## 🛠️ Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/theswayamsingh/srocksmusic_assignment.git
   cd srocksmusic_assignment
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

---

## 📦 Dependencies

- `google_fonts`: For custom typography
- Other dependencies can be found in [`pubspec.yaml`](./srocksmusic_assignment/pubspec.yaml)

---

## 🧪 Testing

To run the tests:

```bash
flutter test
```

## 👨‍💻 Author

- Swayam Singh - [@theswayamsingh](https://github.com/theswayamsingh)
