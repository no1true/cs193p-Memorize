//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by no1true on 2022/02/03.
//

import SwiftUI
// ViewModel

class EmojiMemoryGame: ObservableObject {
//    static private let emojis = ["🚗", "🚕", "🚙" , "🚌" ,"🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛺", "🚔", "🚍", "🚘", "🚖", "🦼", "🚲", "🛴", "🚡", "🚠"]
    static private var emojis = createTheme().setOfEmoji
//    static private var emojis = [String]()
    static private var emojisCount = 5
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: emojisCount) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    static func createTheme() -> Theme {
        let theme = Theme(nameForTheTheme: ThemeName.animal, numberOfPairsOfCards: emojisCount)
//        emojis = theme.setOfEmoji
        return theme
    }
    
    @Published private var themeModel:Theme = createTheme()
    
    var uiColor:Color {
        return themeModel.colorToUseToDraw
    }
    
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
