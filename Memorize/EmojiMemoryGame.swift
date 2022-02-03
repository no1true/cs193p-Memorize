//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by no1true on 2022/02/03.
//

import SwiftUI
// ViewModel

class EmojiMemoryGame {
    static let emojis = ["🚗", "🚕", "🚙" , "🚌" ,"🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛺", "🚔", "🚍", "🚘", "🚖", "🦼", "🚲", "🛴", "🚡", "🚠"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
                 emojis[pairIndex]
             }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
     
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
