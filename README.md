# QuizApp

Quiz application: A freelance project for a coaching center.

## Tasks
<p>
Data Integration:<br>
✅Fetch quiz data from the API endpoint. - Used Http<br>
✅Ensure proper parsing and error handling for robust data integration. 
</p>

Core Features:<br>
✅Start Quiz<br>
✅Questions with multiple-choice answers.<br>
✅Show a summary of results upon quiz completion, including total points scored.<br>


Technical Requirements:<br>
✅Use the Flutter framework for development.<br>
✅Ensure the app is responsive across various devices and orientations.<br>
✅Write clean, maintainable, and well-documented code.- <b>Used GETX state managment</b><br>


Bonus Points (Optional)<br>
✅Clean Intuitive design<br>
✅Gamification implementation - <b>Added Leaderboard, Badges and Streak System</b><br>

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



## Screenshots
<img src='https://github.com/princebhagat08/Quiz-App/blob/main/Screenshots/1.png'>
<img src='https://github.com/princebhagat08/Quiz-App/blob/main/Screenshots/2.png'>
<img src='https://github.com/princebhagat08/Quiz-App/blob/main/Screenshots/new.png'>
<img src='https://github.com/princebhagat08/Quiz-App/blob/main/Screenshots/4.png'>





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


