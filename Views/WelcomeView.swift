//
//  WelcomeView.swift
//  Culture Quiz
//
//  Created by Léa Henry on 26/03/2024.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationView {
            
            ZStack {
                GameColor.main.ignoresSafeArea()
                
                VStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Welcome to Culture Quiz!")
                            .font(.system(size: UIDevice.current.userInterfaceIdiom == .pad ? 50 : 30))
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(25)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Select the correct answers to the following questions")
                            .font(.system(size: UIDevice.current.userInterfaceIdiom == .pad ? 50 : 30))
                            .fontWeight(.light)
                            .multilineTextAlignment(.leading)
                            .padding(30)
                    }
                    Spacer()
          
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Start")
                                .frame(height: UIDevice.current.userInterfaceIdiom == .pad ? 80 : 30)
                        })
                }
                .foregroundColor(.white)
            }
        }
    }
}


#Preview {
    WelcomeView()
}



