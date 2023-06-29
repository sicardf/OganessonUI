//
//  OGNavigationBar.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct OGNavigationBar<Content: View>: View {
    
    var content: Content
    
    @Environment(\.isFloating) var isFloating

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 48, height: 48)
                .foregroundColor(.green)
            content
            Rectangle()
                .frame(width: 48, height: 48)
                .foregroundColor(.yellow)
        }
        .background(isFloating ? Color.clear : Color.gray)
    }
}

struct OGNavigationBar_Previews: PreviewProvider {

    static var previews: some View {
        OGNavigationBar {
            OGNavigationBarTitle(text: "Lorem Ipsum")
        }
    }
}
