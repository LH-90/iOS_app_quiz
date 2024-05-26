//
//  BottomTextView.swift
//  Culture Quiz
//
//  Created by Léa Henry on 26/03/2024.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            
            Spacer()
            
            Text(str)
                .font(.system(size: UIDevice.current.userInterfaceIdiom == .pad ? 40 : 25))
                .fontWeight(.semibold)
                .frame(height: UIDevice.current.userInterfaceIdiom == .pad ? 80 : 30)
                .padding()
                .offset(y: UIDevice.current.userInterfaceIdiom == .pad ? 0 : 5)
            
            Spacer()
        }
        .background(GameColor.accent)
    }
}


#Preview {
    BottomTextView(str: "Test")
}

