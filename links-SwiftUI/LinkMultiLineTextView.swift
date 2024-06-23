//
//  LinkMultiLineTextView.swift
//  links-SwiftUI
//
//  Created by Abel Lazaro on 23/06/24.
//

import SwiftUI

struct LinkMultiLineTextView: View {
    let fullText = "This is a text with a hyperlink to Google, this text contains multiline string."
    let linkedWord = "Google"
    let url = "https://www.google.com"
    
    var body: some View {
        Text(attributedText)
            .font(.system(size: 17))
            .lineLimit(nil)
            .multilineTextAlignment(.leading)
            .frame(width: UIScreen.main.bounds.width - 60)
    }
    
    var attributedText: AttributedString {
        var attributedString = AttributedString(fullText)
        if let range = attributedString.range(of: linkedWord) {
            attributedString[range].link = URL(string: url)
            attributedString[range].foregroundColor = .blue
        }
        return attributedString
    }
}
