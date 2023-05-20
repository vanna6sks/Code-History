//
//  WindowView.swift
//  Code History
//
//  Created by Vanna on 5/7/23.
//Welcome screen details

import SwiftUI

struct WelcomeView: View {
    //see GameColor view
    //let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
   // let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
     
    var body: some View {
        NavigationView{
            //Can now add a navigationlink
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Text("Tyler Perry")
                    Spacer() // space before
                    VStack(alignment: .leading, spacing: 0) {
                        Text("QUIZ")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            HStack {
                                BottomTextView(str: "Start Game!") // replace text
                            }.background(GameColor.accent)
                        })
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct WindowView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
