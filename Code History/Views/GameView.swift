//
//  ContentView.swift
//  Code History
//
//  Created by Vanna on 4/17/23.
//Details for etnire game screen

import SwiftUI

struct GameView: View {
    //RGB, different amounts of red, green and blue
    // @State required to change mainColor later, declare color here since it changes
  //  @State var mainColor = Color(red:20/255,green:28/255,blue: 58/255)
    
    @StateObject var viewModel = GameViewModel() // updated
    
    var body: some View {
        ZStack { //outter Zstack
            GameColor.main.ignoresSafeArea() // ignore safe areas
            VStack{ // Vertically placed text
                // Print question progress at top of screen
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                // call QuestionView so questions display
                // Initialize it with viewModel current Question
                QuestionView(question: viewModel.currentQuestion)
                    .padding() // adds
                    .navigationBarHidden(true) // Hide back button when on question screen(s) -- Hide navigation bar
                    .environmentObject(viewModel) //Gives GameViewModel access to QuestionView to pass down methods
            }
        }
        .foregroundColor(.white)
        // Monitor .gameIsOver property, when true Navigate to ScoreView
        // EmptyView does not display aything, user does not see Nav
        .background(NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)), isActive: .constant(viewModel.gameIsOver), label : {EmptyView()}))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}


/* Button(action:{
 print("Tapped on choice 1")
},label:{ // Calls ChoiceTextView View, details there
 ChoiceTextView(choiceText: question.possibleAnswers[0])
})
Button(action:{
 print("Tapped on choice 2")
},label:{
 ChoiceTextView(choiceText: question.possibleAnswers[1])
})
Button(action:{
 print("Tapped on choice 3")
},label:{
 ChoiceTextView(choiceText: question.possibleAnswers[2])
})
Button(action:{
 print("Tapped on choice 4")
},label:{
 ChoiceTextView(choiceText: question.possibleAnswers[3])
})*/
