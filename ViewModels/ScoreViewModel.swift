//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Vanna on 5/10/23.
//
//ViewModel for score view

import Foundation
 
struct ScoreViewModel {
  let correctGuesses: Int  // Number of correct guesses
  let incorrectGuesses: Int // Number of incorrect guesses
 
// Calculate percentage
  var percentage: Int {
    (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
  }
}
