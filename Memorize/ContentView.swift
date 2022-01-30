//
//  ContentView.swift
//  Memorize
//
//  Created by no1true on 2022/01/26.
//

import SwiftUI

struct ContentView: View {
    @State var emojis = ["🚗", "🚕", "🚙" , "🚌" ,"🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛺", "🚔", "🚍", "🚘", "🚖", "🦼", "🚲", "🛴", "🚡", "🚠"]
    @State var emojiCount = 4
    
    var body: some View {
        VStack {
            Text("Memorize!")
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0 ..< emojiCount], id: \.self ){ emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            HStack {
                animalTheme
                Spacer()
                foodTheme
                Spacer()
                activityTheme
            }
            .foregroundColor(.red)
            Spacer()
        }
        .padding(.horizontal)
    }
    var animalTheme : some View {
        Button {
            //random count
            emojiCount = Int.random(in: 1...8)
            emojis = ["🐶", "🐱", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼", "🐻‍❄️", "🐨", "🐯", "🦁"]
            emojis = emojis.shuffled()
        } label: {
            VStack {
                Image(systemName: "hare.fill")
                Text("Animal")
            }
        }
    }
    var foodTheme : some View {
        Button {
            //random count
            emojiCount = Int.random(in: 1...8)
            emojis = ["🍏", "🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍈", "🍒"]
            emojis = emojis.shuffled()
        } label: {
            VStack {
                Image(systemName: "applelogo")
                Text("Food")
            }
        }
    }
    var activityTheme: some View {
        Button {
            //random count
            emojiCount = Int.random(in: 1...8)
            emojis = ["⚽️", "🏀", "🏈", "⚾️", "🥎", "🎾", "🏐", "🏉", "🥏", "🎱", "🪀", "🏓"]
            emojis = emojis.shuffled()
        } label: {
            VStack {
                Image(systemName: "figure.walk")
                Text("Activity")
            }
        }
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius:  20 )
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
