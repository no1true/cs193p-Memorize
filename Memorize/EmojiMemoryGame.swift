//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by no1true on 2022/02/03.
//

import SwiftUI
// ViewModel

class EmojiMemoryGame: ObservableObject {
//    private let emojis = ["🚗", "🚕", "🚙" , "🚌" ,"🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛺", "🚔", "🚍", "🚘", "🚖", "🦼", "🚲", "🛴", "🚡", "🚠"]
    
    lazy var themeModel = Theme(nameForTheTheme: ThemeName.car, numberOfPairsOfCards: 2)
    
    func createMemoryGame() -> MemoryGame<String> {
        let emojis = themeModel.setOfEmoji
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
    
    func clickNewGame() {
        print("clickNewGame")
        themeModel.newGame()
    }
}
