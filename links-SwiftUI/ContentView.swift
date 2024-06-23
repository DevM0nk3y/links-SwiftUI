//
//  ContentView.swift
//  links-SwiftUI
//
//  Created by Abel Jafet Lazaro Delgado on 20/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LinkView()
        Divider()
        
        LinkTextView()
        Divider()
        
        LinkBTWNStringView()
        Divider()
        
        LinkMultiLineTextView()
    }
}

#Preview {
    ContentView()
}
