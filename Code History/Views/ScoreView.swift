//
//  ScoreView.swift
//  Code History
//
//  Created by Vanna on 5/10/23.
//
// Final view that you will use to display the results of the quiz to the player and ask them if they want to re-take the quiz.
import SwiftUI
 
struct ScoreView: View {
    //Add viewModel to view
    let viewModel: ScoreViewModel
    
  var body: some View {
    ZStack {
      GameColor.main.ignoresSafeArea()
      VStack{
          Spacer()
          Text("Final Score:")
              .font(.body)
          Text("\(viewModel.percentage)%")
              .font(.system(size: 50))
              .bold()
              .padding() // small space between
          Spacer()
          VStack{
              Text("\(viewModel.correctGuesses) ✅")
              Text("\(viewModel.incorrectGuesses) ❌")
          }.font(.system(size:30))
          Spacer()
          NavigationLink(
              destination: GameView(),
              label: {
                BottomTextView(str: "Re-take Quiz")
        })
      }
      .foregroundColor(.white)
      .navigationBarHidden(true)
    }
  }
}
struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
