//
//  QuestionView.swift
//  Code History
//
//  Created by Vanna on 5/9/23.
//
//Details for displaying question
import SwiftUI

struct QuestionView: View {
    
    @EnvironmentObject var viewModel: GameViewModel // allowed because of declaration in GameView when QuestionView called
    
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            //HStack { make answers vertical instead
                ForEach(0..<question.possibleAnswers.count) { answerIndex in
                    Button(action: {
                        print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                        
                        // Tell GameViewModel that a guess was made
                        viewModel.makeGuess(atIndex: answerIndex)
                    }) {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            .background(viewModel.color(forOptionIndex: answerIndex)) 
                    }
                    // Disallow users to make multipleselections on a question
                    // Disable other buttons if a guess was made
                    .disabled(viewModel.guessWasMade)
                }
            Spacer()
          //  }
            // Add a button to the bottom of the view if a guess was made
            if viewModel.guessWasMade {
                Button(action: { viewModel.displayNextScreen() }) {
                    BottomTextView(str: "Next")
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
            .environmentObject(GameViewModel()) // error without
    }
}
