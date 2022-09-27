//
//  MainView.swift
//  TarotApp
//
//  Created by MacOS on 25/02/2022.
//

import Foundation
import SwiftUI

struct MainView: View {
    
    @State var cards:[Card]
    var body: some View {
        VStack() {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(cards) {
                        card in
                        CardView(cardName: card.filename)
                            .onTapGesture {
                                flip(card)
                            }
                    }
                }
            }
            Button("Shuffle")
                
            {
                withAnimation {
                    cards.shuffle()
                }
                
                
            }
        }
    }
    func flip(_ card: Card) {
        if let cardIndex = index(of: card) {
            cards[cardIndex].selected.toggle()
        }
    }
    
    func index(of card: Card) -> Int? {
        return cards.firstIndex(where: {$0 == card})
    }
}

struct CardView: View {
    var cardName: String
    
    var body: some View {
        Image(cardName)
            .resizable()
            .scaledToFit()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        let deck = Deck()
        MainView(cards: deck.cards)
    }
}
