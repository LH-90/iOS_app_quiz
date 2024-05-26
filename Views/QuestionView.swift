//
//  QuestionView.swift
//  Culture Quiz
//
//  Created by Léa Henry on 28/03/2024.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        VStack {
            
            Spacer().frame(height: UIDevice.current.userInterfaceIdiom == .pad ? 60 : 20)
            
            QuestionTextView(questionText: question.questionText)
            
            Spacer().frame(height: UIDevice.current.userInterfaceIdiom == .pad ? 100 : 80)
            
            VStack (spacing: UIDevice.current.userInterfaceIdiom == .pad ? 15 : 10){
                ForEach(0..<question.possibleAnswers.count) { index in
                    ChoiceTextView(choiceText: question.possibleAnswers[index])
                        .background(viewModel.color(forOptionIndex: index))
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                viewModel.makeGuess(atIndex: index)
                                print("Tapped on option with the text: \(question.possibleAnswers[index])")
                            }
                        }.cornerRadius( UIDevice.current.userInterfaceIdiom == .pad ? 30 : 15)
                         .disabled(viewModel.guessWasMade)
                }
            }
            
            Spacer()
            
            if viewModel.guessWasMade {
                Button(action: { viewModel.displayNextScreen() }) {
                    BottomTextView(str: "Next")
                        .frame(height: UIDevice.current.userInterfaceIdiom == .pad ? 80 : 30)
                }
            }
        }
    }
}



#Preview {
    QuestionView(question: Game().currentQuestion)
        .environmentObject(GameViewModel())
}
