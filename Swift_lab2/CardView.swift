import SwiftUI

struct CardView: View {
    @State private var isFaceUp: Bool = true
    
    var body: some View {
        Group {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.white) // kolor tła odkrytej karty
                    .frame(width: 100, height: 150)
                    .overlay(
                        Text("😀") // przykładowe emoji, które można dostosować
                            .font(.largeTitle)
                    )
            } else {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.gray) // kolor tła zakrytej karty
                    .frame(width: 100, height: 150)
            }
        }
        .opacity(isFaceUp ? 1 : 0.5) // ustawienie przezroczystości na podstawie stanu karty
        .onTapGesture {
            isFaceUp.toggle() // zmiana stanu karty po dotknięciu
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
