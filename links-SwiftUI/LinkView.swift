//
//  LinkView.swift
//  links-SwiftUI
//
//  Created by Abel Jafet Lazaro Delgado on 20/06/24.
//

/* Create a link by providing a destination URL and a title. The title tells the user the purpose of the link, and can be a string, a title key that produces a localized string, or a view that acts as a label. The example below creates a link to google.com and displays the title string as a link-styled view.
*/

import SwiftUI

struct LinkView: View {
    var body: some View {
        Link("This is a text with a hyperlink to Google.", destination: URL(string: "https://www.google.com")!)
    }
}

#Preview {
    LinkView()
}
