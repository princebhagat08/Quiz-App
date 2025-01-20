# QuizApp

Quiz application for the assignment given for position of Flutter Developer Intern

## Getting Started
To setup the project start by cloning the repo to your local machine 
``` 
git clone https://github.com/princebhagat08/Quiz-App
```

Open the project in android studio or VSCode
Run:
```
flutter pub get
```

Attach the emulator and run without debugging.
OR
```
flutter run
```

## Structure 
```
lib/
├── components/
│   ├── custom_button.dart        # A customizable button widget.
│   ├── question_widget.dart      # Displays quiz questions.
│   └── score_display.dart        # Shows the user's current score.
├── models/
│   ├── question_model.dart       # Represents a quiz question.
│   └── quiz_model.dart           # Represents the overall quiz structure.
├── screens/
│   ├── home_screen.dart          # The main entry screen of the app.
│   ├── quiz_screen.dart          # The screen where the quiz takes place.
│   └── result_screen.dart        # Displays the results after completing the quiz.
├── utils/
│   ├── constants.dart            # Stores constant values used throughout the app.
│   └── helpers.dart              # Contains helper functions for various operations.
└── main.dart                     # The entry point of the Flutter application.
```
