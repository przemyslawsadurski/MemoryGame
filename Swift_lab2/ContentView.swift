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
                HStack {
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
                .padding()
            }
        }
    }
    
#Preview {
    ContentView()
}

/*
func themeChooser() -> (Array<String>,Int) {
    if (themeNumber == 1) {
        return (emojis1.shuffled(),emojis1.count)
    }
    if (themeNumber == 2) {
        return (emojis2.shuffled(),emojis2.count)
    } else {
        return (emojis2.shuffled(), emojis3.count)
    }
}

func adjustCardNumber(by offset: Int, symbol: String) -> some View {
 Button(action: {
    cardNumber += offset
    } , label: {
    Image(systemName:symbol)
        .font(.largeTitle)
    })
    .disabled(cardNumber + offset < 2 || cardNumber + offset > themeChooser().0.count)
}

}
*/
