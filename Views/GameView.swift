//
//  ContentView.swift
//  Culture Quiz
//
//  Created by Léa Henry on 19/03/2024.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                
                Spacer().frame(height: 20)
                
                Text(viewModel.questionProgressText)
                    .font(.body)
                    .padding()
                
                QuestionView(question: viewModel.currentQuestion)
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
            .environmentObject(viewModel)
        }
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)),
                isActive: .constant(viewModel.gameIsOver),
                label: { EmptyView() })
        )
    }
}


#Preview {
    GameView()
}

