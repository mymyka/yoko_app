# yoko_app


A new Flutter project.

## Getting Started

# Attention
I use `file_picker` library is it setup for android, but I don't have ios, so it could require additional setup for ios. https://github.com/miguelpruivo/flutter_file_picker/wiki/Setup#--ios

I moved chat Chat GPT api key to .env, and wrote it in comments to my work

Minimum Android SDK 21 (because I use file_picker package)

### Run guide
1. Rename .env.example to .env
```
cp .env.example .env
```
2. Fill .env with Open Ai key from my classroom comments
3. Run next commands
```
flutter pub get
dart run build_runner build -d
flutter run
```
