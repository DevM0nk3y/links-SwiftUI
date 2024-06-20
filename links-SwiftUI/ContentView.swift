//
//  ContentView.swift
//  links-SwiftUI
//
//  Created by Abel Jafet Lazaro Delgado on 20/06/24.
//

import SwiftUI

struct ContentView: View {
    let fullText = "Este es un texto con un hipervínculo a Google."
    let linkedWords = "Google"
    let url = "https://www.google.com"
    
    var body: some View {
        let components = fullText.components(separatedBy: linkedWords)
        
        return HStack(spacing: 0) {
            Text(components[0])
            Text(linkedWords)
                .foregroundColor(.blue)
                .onTapGesture {
                    if let url = URL(string: url) {
                        UIApplication.shared.open(url)
                    }
                }
            Text(components[1])
        }
    }
}

#Preview {
    ContentView()
}
