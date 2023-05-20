//
//  Question.swift
//  Code History
//
//  Created by Vanna on 4/27/23.
//

import Foundation

struct Question: Hashable { // Add Hashable conformance to use in Dictionary
    let questionText: String //actual question
    let possibleAnswers: [String] //Array of strings (answers)
    let correctAnswerIndex: Int // holds index of correct answer
    
    // array of questions
    // place here so that view is not extensive
    static var allQuestions = [
        Question(questionText: "In which year was Tyler Perry born?",
                 possibleAnswers: [
                 "1965",
                 "1970",
                 "1980",
                 "1990"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Which character is Tyler Perry most famous for portraying in his films?",
                 possibleAnswers: [
                 "Madea",
                 "Alex Cross",
                 "Mabel Simmons",
                 "Joe"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Which of the following is NOT a Tyler Perry film?",
                 possibleAnswers: [
                 "Diary of a Mad Black Woman",
                 "Madea Goes To Jail",
                 "The Pursuit of Happiness",
                 "Boo! A Madea Halloween"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "What is the name of Tyler Perry's production company?",
                 possibleAnswers: [
                 "TP Productions",
                 "Perry Pictures",
                 "Tyler Perry Studios",
                 "Madia Entertainment"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "Which Tyler Perry film marked his directoiral debut?",
                 possibleAnswers: [
                 "Madea's Family Reunion",
                 "Why Did I Get Married?",
                 "Good Deeds",
                 "Diary of a Mad Black Woman"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "In addition to being an actorm writer, and director, Tyler Perry is also known for his work in which industry?",
                 possibleAnswers: [
                 "Music",
                 "Fashion",
                 "Real estate",
                 "Television"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "Which popular TV series created by Tyler Perry aired from 2006 to 2011?",
                 possibleAnswers: [
                 "The Haves and the Have Nots",
                 "House of Payne",
                 "For Better or Worse",
                 "Meet the Browns"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "How many films are there in the 'Madea' film series?",
                 possibleAnswers: [
                 "2",
                 "4",
                 "6",
                 "8"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "Which of the following awars has Tyler Perry NOT won?",
                 possibleAnswers: [
                 "Academy Award",
                 "Emmy Award",
                 "Tony Award",
                 "Grammy Award"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "In 2019, Tyler Perry opened a major film production studio. Where is it located?",
                 possibleAnswers: [
                 "New York",
                 "California",
                 "Georgia",
                 "Illinois"
                 ],
                 correctAnswerIndex: 2)
    ]
}
