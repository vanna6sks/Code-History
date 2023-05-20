//
//  GameViewModel.swift
//  Code History
//
//  Created by Vanna on 5/8/23.
//
import SwiftUI
 
// 1
class GameViewModel: ObservableObject {
 
  // MARK: - Published properties
  // 2
  @Published private var game = Game()
 
  // MARK: - Internal properties
  // 3
  var currentQuestion: Question {
     game.currentQuestion
  }
    // number of correct guesses
    var correctGuesses: Int {
      game.guessCount.correct
    }
    
    //number of incorrect guesses
    var incorrectGuesses: Int {
      game.guessCount.incorrect
    }
  // 4
  var questionProgressText: String {
    "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
  }
    // Handling a guess
    var guessWasMade: Bool{
        if let _ = game.guesses[currentQuestion]{ // check game.guesses for a value
            return true // user has guessed an answer
        } else {
            return false // user has not guessed an answer
        }
    }
    
    // Is Game over?
    var gameIsOver: Bool {
        //return true or false
      game.isOver
    }
    // MARK: - Internal Methods
       // Communicates the guessed index to the game game property for the currently displayed question
   func makeGuess(atIndex index: Int) {
       game.makeGuessForCurrentQuestion(atIndex: index)
   }
   // Update the game’s status and will be called when the user taps on the button to proceed to the next screen.
   func displayNextScreen() {
       game.updateGameStatus()
   }
    // Update the selected background button color when the user taps a button.
    func color(forOptionIndex optionIndex: Int) -> Color {
         if let guessedIndex = game.guesses[currentQuestion] { // Conditional binding  to check if user made a guess
             if guessedIndex != optionIndex { // if answer is not guessed,
                 return GameColor.main      // keep button color untouched
             } else if guessedIndex == currentQuestion.correctAnswerIndex { // check if guessed index = correct answer
                 return GameColor.correctGuess      // button color --> correctGuess (green?)
             } else {
                 return GameColor.incorrectGuess    // button color --> incorrectGuess (red?)
             }
         } else { // if user did not make a guess
             return GameColor.main      // keep button color untouched
         }
    }
}
