//
//  Theme.swift
//  Memorize
//
//  Created by no1true on 2022/02/09.
//

import Foundation
import SwiftUI

enum ThemeName {
    case animal
    case activity
    case food
    case car
    
    func getEmoji() -> [String] {
        switch self {
        case .animal:
            return ["🐶", "🐱", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼", "🐻‍❄️", "🐨", "🐯", "🦁"]
        case .activity:
            return ["⚽️", "🏀", "🏈", "⚾️", "🥎", "🎾", "🏐", "🏉", "🥏", "🎱", "🪀", "🏓"]
        case .food:
            return ["🍏", "🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍈", "🍒"]
        case .car:
            return ["🚗", "🚕", "🚙" , "🚌" ,"🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛺", "🚔", "🚍", "🚘", "🚖", "🦼", "🚲", "🛴", "🚡", "🚠"]
        }
    }
}

struct Theme {
//    var nameForTheTheme:ThemeName
    var setOfEmoji:[String]
//    var numberOfPairsOfCards:Int
    var colorToUseToDraw:Color
    
    init(nameForTheTheme:ThemeName, numberOfPairsOfCards:Int ) {
        let arrayEmoji:[String] = nameForTheTheme.getEmoji().shuffled()
        setOfEmoji = Array(arrayEmoji.prefix(numberOfPairsOfCards))
        colorToUseToDraw = Color.orange
//        setOfEmoji = nameForTheTheme.getEmoji().shuffle()
    }
    
    func newGame() {
        
    }
}
