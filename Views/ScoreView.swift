//
//  ScoreView.swift
//  Culture Quiz
//
//  Created by Léa Henry on 29/03/2024.
//

import SwiftUI

struct ScoreView: View {
  let viewModel: ScoreViewModel
    
  var body: some View {
    ZStack {
      GameColor.main.ignoresSafeArea()
      VStack{
          Spacer()
          Text("Final score:")
              .font(.system(size: UIDevice.current.userInterfaceIdiom == .pad ? 50 : 30))
              .bold()
          
          Text("\(viewModel.correctGuesses)/\(Question.allQuestions.count)")
              .font(.system(size: UIDevice.current.userInterfaceIdiom == .pad ? 50 : 30))
              .bold()
              .padding()
          
          if viewModel.correctGuesses == Question.allQuestions.count {
                  Text("Congratulations!")
                  .font(.system(size: UIDevice.current.userInterfaceIdiom == .pad ? 50 : 30))
                      .bold()
                      .padding()
                      .foregroundColor(.green)
                  Text("🎉")
                  .font(.system(size: UIDevice.current.userInterfaceIdiom == .pad ? 50 : 30))
                      .padding()
          }
          
          Spacer()
          
          NavigationLink(
            destination: GameView(),
            label: {
              BottomTextView(str: "Re-take Quiz")
                    .frame(height: UIDevice.current.userInterfaceIdiom == .pad ? 80 : 30)
            })
          
      }
      .foregroundColor(.white)
      .navigationBarHidden(true)
    }
  }
}

#Preview {
    ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
}

