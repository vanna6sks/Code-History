//
//  Game.swift
//  Code History
//
//  Created by Vanna on 5/6/23.
//

import Foundation
import SwiftUI

struct Game{
    
    // Keep track of current question's index
    private(set) var currentQuestionIndex = 0
    
    // Keep track of how many guesses per question
    // can be read but not written to from outside of the structure
    // Dictionary of each question and # of guesses
    private(set) var guesses = [Question: Int]()
    
    // keep track of if game is over
    private(set) var isOver = false
    
    // property return number of questions
    // computed property because it will return a value derived from another property
    var numberOfQuestions: Int {
        questions.count
    }
    
    // property return current question
    // computed property because it will return a value derived from another property
    var currentQuestion: Question{
        questions[currentQuestionIndex]
    }
    
    // Iterate through guesses dictionary
    // Calculate the total number of guesses
    // computed property because it will return a value derived from another property
    var guessCount: (correct: Int, incorrect: Int) { // returns a tuple w/ total # of correct/incorrect guesses
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex { // correct if guessed answer index = correct answer's index
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    // call questions defined in Question Model, in Question structure
    private let questions = Question.allQuestions.shuffled()
    
    // Update the guessed index for a specific question
    // mutating because func will change internal state of structure
    mutating func makeGuessForCurrentQuestion(atIndex index: Int){
        guesses[currentQuestion] = index
    }
    
    // Update game status
    mutating func updateGameStatus(){
        if currentQuestionIndex < questions.count - 1{
            currentQuestionIndex += 1
        } else {
            isOver = true // game over
        }
    }
    
    
}
