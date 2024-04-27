import SwiftUI

struct CardView: View {
    @State private var isFaceUp: Bool = true
    let emoji: String

    var body: some View {
        Group {
            RoundedRectangle(cornerRadius: 12)
                .stroke(lineWidth: 2)
                .background(RoundedRectangle(cornerRadius: 12).fill(isFaceUp ? Color.white : Color.blue))
                .overlay(Text(emoji)
                            .font(.largeTitle)
                            .opacity(isFaceUp ? 1 : 0))
        }
        .aspectRatio(2/3, contentMode: .fit)
        .onTapGesture {
            isFaceUp.toggle()
        }
        .padding(15)
        .foregroundColor(.blue)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(emoji: "😁")
    }
}


