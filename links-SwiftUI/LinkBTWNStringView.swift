//
//  LinkBTWNString.swift
//  links-SwiftUI
//
//  Created by Abel Jafet Lazaro Delgado on 20/06/24.
//

/* create a link with a dynamic String, which is divided into 3 parts in this case to identify the keyword that will be our link within the string. */

import SwiftUI

struct LinkBTWNStringView: View {
    let fullText = "This is a text with a hyperlink to Google."
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
    LinkBTWNStringView()
}
