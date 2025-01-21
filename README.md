# Culture Quiz

Welcome to culture Quiz, a simple and interactive quiz application built using Swift and SwiftUI. This app allows users to play a quiz game and see their progress and score. It is designed to run on iOS devices and can be visualized and tested directly in Xcode.


## Installation

To run this project on your local machine, follow these steps:

1. Clone the repository

2. Open the project in Xcode

3. Select your target device or simulator and run the code
   

## Playing the Quiz

Once the app is running on your device or simulator:

1. Start the quiz
    - The "WelcomeView" file will display a "Start" button. Tap it to begin.

2. Answer questions
    - Each question will be presented with multiple-choice answers. Select an answer to proceed to the next question.

3. View score
    - At the end of the quiz, your score will be displayed along with an option to re-take the quiz.


## Project Structure

- **ViewModels**
  - `GameViewModel`: includes current questions, guesses and score tracking
  - `ScoreViewModel`: holds the final score to be displayed at the end of the quiz

- **Models**
  - `Question`: includes the questions, possible answers and the correct answer index
  - `Game`: manages the logic behind the questions and answers

- **Views**
  - `WelcomeView`: it is the starting screen of the app, welcoming users and displaying a button to start the quiz
  - `GameView`: the main view where the quiz questions are displayed and answered
  - `ScoreView`: displays the user's score at the end of the quiz
  - `QuestionView`: custom view for displaying the quiz questions text
  - `ChoiceTextView`: custom view for displaying the possible answers text
  - `BottomTextView`: custom view for displaying bottom text buttons
  - `GameColor`: defines the colors used throughout the app
