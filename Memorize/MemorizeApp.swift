//
//  MemorizeApp.swift
//  Memorize
//
//  Created by no1true on 2022/01/26.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
