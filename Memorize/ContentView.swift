//
//  ContentView.swift
//  Memorize
//
//  Created by no1true on 2022/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius:  20 )
                .stroke(lineWidth:  3)
            Text("Hello world!")
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
