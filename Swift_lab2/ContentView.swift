//
//  ContentView.swift
//  Swift_lab2
//
//  Created by student on 27/04/2024.
//

import SwiftUI


struct ContentView: View {
    
    
    let applicationTitle = "Memo"
    var cards = ["🤣","😀","😅","🥹","🙃","😘","😎","😇","🥳","🥸","😛","🥴"]
    @State private var numberOfCards = 4
    
    var themes = [
            "Emojis": ["🤣","😀","😅","🥹"],
            "Sports": ["⚽️", "🏀", "🎾", "🏈"],
            "Animals": ["🐶", "🐱", "🐭", "🐹"]
        ]
    
    var body: some View {
        Text("Memo").font(.largeTitle)
            VStack {
                ScrollView {
                    
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))], spacing: 20) {
                        ForEach(0..<numberOfCards, id: \.self) { index in
                            CardView(emoji: cards[index % cards.count])
                        }
                    }
                    .foregroundColor(.blue)
                }
                /*HStack {
                    Button(action: {
                        if numberOfCards < cards.count * 2 {
                            numberOfCards += 2
                        }
                    }) {
                        Image(systemName: "plus.circle")
                    }
                    .disabled(numberOfCards >= cards.count * 2)

                    Button(action: {
                        if numberOfCards > 2 {
                            numberOfCards -= 2
                        }
                    }) {
                        Image(systemName: "minus.circle")
                    }
                    .disabled(numberOfCards <= 2)
                }
                .font(.largeTitle)
                .padding()*/
            }
        }
    }
    
#Preview {
    ContentView()
}
