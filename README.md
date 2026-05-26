# ✊ 🖐 ✌️ Jokenpô

A modern, professional, and complete version of the classic **Rock, Paper, Scissors** game, developed with Flutter. This project was built focusing on clean architecture, separation of concerns, and a fluid user experience (UX).

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)

## 📱 Deploy
Test the app in the web version: https://jokenpo-pedrofeld.netlify.app.

## 🚀 Features

- **Dynamic Home Screen:** Modern interface with gradients and intuitive navigation.
- **Strategy Configuration:** Players can choose the number of rounds (Best of 3, 5, 7, etc.) before starting.
- **Real-time Scoreboard:** Tracking user vs. App victories during rounds.
- **Smart Logic:** Winner verification system isolated from the UI.
- **Results Screen:** Match summary indicating the overall winner and quick rematch option.

## 🏗️ Project Architecture

The project follows a layer-based organization pattern, facilitating maintenance and scalability:

```
lib/
├── models/      # Data classes (e.g., GameData)
├── pages/       # Full application screens
├── services/    # Business logic and game rules
├── utils/       # Color constants and text styles
├── widgets/     # Reusable UI components
└── main.dart    # Entry point and route configuration
```

## 🛠️ Technologies Used

- **Flutter SDK:** For building the multi-platform interface.
- **Dart:** Robust programming language.
- **Named Route Navigation:** For an organized screen flow.
- **Native State Management:** Efficient use of `setState` and parameter passing between routes.

## ▶️ How to Run the Project

1. Make sure you have [Flutter installed](https://docs.flutter.dev/get-started/install).
2. Clone this repository:
   ```bash
   git clone https://github.com/your-username/jokenpo-flutter.git
   ```
3. Enter the project folder:
   ```bash
   cd jokenpo
   ```
4. Install dependencies:
   ```bash
   flutter pub get
   ```
5. Run the app:
   ```bash
   flutter run
   ```

## 👤 Autor

Developed by [Pedro Feld](https://www.linkedin.com/in/pedro-feld/).

May 2026.
