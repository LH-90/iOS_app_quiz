//
//  ChoiceTextView.swift
//  Culture Quiz
//
//  Created by Léa Henry on 22/03/2024.
//

import Foundation
import SwiftUI


struct QuestionTextView: View {
    let questionText: String
    
    var body: some View {
        Text(questionText)
            .font(.system(size: UIDevice.current.userInterfaceIdiom == .pad ? 50 : 30))
            .bold()
            .multilineTextAlignment(.leading)
            .padding(30)
    }
}



struct ChoiceTextView: View {
    let choiceText: String

    var body: some View {
        VStack {
            Text(choiceText)
                .font(.system(size: UIDevice.current.userInterfaceIdiom == .pad ? 30 : 20))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .padding(10)
                .frame(width: UIDevice.current.userInterfaceIdiom == .pad ? 550 : 300)
                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? 110 : 60)
                .minimumScaleFactor(0.5)
        }
    }
}



#Preview {
    ChoiceTextView(choiceText: "Choice text")
}
