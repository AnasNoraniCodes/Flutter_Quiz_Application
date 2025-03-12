# Flutter Quiz App

📘 What I Learned
Building this Flutter Quiz App has been an exciting journey! I gained a deeper understanding of Stateless and Stateful widgets, learning when and how to use them effectively. Working with state management, I explored how to update the UI dynamically as users interact with the app. I also learned about navigation in Flutter.Which allowed me to move between different screens seamlessly. Implementing lists and maps to store quiz questions and answers gave me hands-on experience with data management. Additionally, I practiced handling user interactions through functions and callbacks, making the app more interactive. This project also helped me improve my understanding of conditional rendering, ensuring that the right screen appears at the right time. Overall, this experience has strengthened my Flutter skills and given me more confidence in mobile app development! 

## Introduction
The Flutter Quiz App is an interactive quiz application built using Flutter. It allows users to answer multiple-choice questions, view their results, and restart the quiz. The app features a dynamic question-answer system, state management, and a visually appealing UI.

 
## Features
- 📝 **Multiple-Choice Questions** – Users can select answers from a set of options.
- 🔀 **Shuffled Answers** – Answers are displayed in random order to ensure a fair quiz experience.
- 📊 **Real-Time Score Calculation** – The app tracks correct answers and provides instant feedback.
- 📱 **Responsive UI** – Optimized for both mobile and tablet devices.
- 🎨 **Modern UI Design** – Uses Google Fonts and gradient themes for an attractive look.
- 🔄 **Restart Functionality** – Users can retake the quiz with a single click.

## Tech Stack
- **Flutter** – UI framework for building cross-platform applications.
- **Dart** – Programming language used to develop the app.
- **State Management** – Implemented using `setState` for real-time updates.


## Project Structure
```
lib/
│── main.dart             # Entry point of the app
│── quiz.dart             # Main quiz logic and state management
│── start_screen.dart     # Welcome screen with start button
│── questions_screen.dart # Displays questions and answers
│── results_screen.dart   # Shows quiz results
│── question_summary.dart # Summarizes the user's answers
│── data/
│   ├── data.dart         # Stores quiz questions and answers
│── models/
│   ├── quiz_questions.dart  # Quiz question model
```

## Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/flutter_quiz_app.git
   ```
2. Navigate to the project directory:
   ```sh
   cd flutter_quiz_app
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the app:
   ```sh
   flutter run
   ```

## How to Play
1. Start the quiz by clicking the **Start Quiz** button.
2. Select an answer for each question.
3. View the results at the end of the quiz.
4. Restart the quiz if desired.

## Future Enhancements
- Add a timer for each question.
- Implement different categories of quizzes.
- Store user progress and scores using local storage.
- Improve animations and UI enhancements.

---
### Happy Coding! 🚀




 