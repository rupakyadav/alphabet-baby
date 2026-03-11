# 🔤🍼 Alphabet Baby

A fun, colorful alphabet learning app for kids built with Flutter! Features text-to-speech, cute emoji illustrations, and beautiful animations.

## ✨ Features

- **A-Z Letter Cards** — Big, beautiful letter display with uppercase and lowercase
- **3 Word Cards per Letter** — Each letter has 3 illustrated word cards (e.g., A = Apple 🍎, Aeroplane ✈️, Ant 🐜)
- **Text-to-Speech** — Tap any card to hear the word spoken aloud in a friendly voice
- **Smooth Animations** — Bouncy transitions, scale effects, and progress tracking
- **Kid-Friendly Design** — White background, colorful cards, large tap targets
- **Cross-Platform** — Runs on iOS, Android, and Windows

## 📱 Screens

| Home Screen | Letter Screen |
|:-----------:|:-------------:|
| Big animated "A" button to enter | Big letter + 3 word cards + navigation arrows |

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (3.x or later)
- Dart SDK (included with Flutter)

### Run the app
```bash
git clone https://github.com/YOUR_USERNAME/alphabet-baby.git
cd alphabet-baby
flutter pub get
flutter run
```

## 🛠️ Tech Stack

| Component | Choice |
|-----------|--------|
| Framework | Flutter |
| Language | Dart |
| TTS | flutter_tts |
| Typography | Google Fonts (Baloo 2) |

## 📂 Project Structure

```
lib/
├── main.dart              # App entry point
├── data/
│   └── alphabet_data.dart # A-Z letter & word definitions
├── models/
│   └── letter_item.dart   # Data models
├── screens/
│   ├── home_screen.dart   # Home screen with animated "A" button
│   └── letter_screen.dart # Letter display + word cards + TTS
├── theme/
│   └── app_theme.dart     # Colors, text styles
└── widgets/
    └── word_card.dart     # Tappable word card widget
```

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
