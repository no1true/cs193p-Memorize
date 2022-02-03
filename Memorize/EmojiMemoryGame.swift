//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by no1true on 2022/02/03.
//

import SwiftUI
// ViewModel

class EmojiMemoryGame: ObservableObject {
    static let emojis = ["🚗", "🚕", "🚙" , "🚌" ,"🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛺", "🚔", "🚍", "🚘", "🚖", "🦼", "🚲", "🛴", "🚡", "🚠"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 3) { pairIndex in
                 emojis[pairIndex]
             }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
     
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card){
        model.choose(card)
    }
}
