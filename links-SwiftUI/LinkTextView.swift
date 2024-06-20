//
//  LinkTextView.swift
//  links-SwiftUI
//
//  Created by Abel Jafet Lazaro Delgado on 20/06/24.
//

/* Create a link with a Text view. However, in SwiftUI directly, it's not possible to create a hypertext link directly within a Text in this manner using Markdown, as you would in other contexts like Markdown rendering on the web or in certain development frameworks.
*/

import SwiftUI

struct LinkTextView: View {
    var body: some View {
        Text("This is a text with a hyperlink to [Google](https://www.google.com).")
    }
}

#Preview {
    LinkTextView()
}
