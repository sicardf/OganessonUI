//
//  OGNavigationBarTitle.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct OGNavigationBarTitle: View {
    
    var text: String

    var body: some View {
        HStack {
            Spacer()
            Text(text)
            Spacer()
        }
    }
}

struct OGNavigationBarTitle_Previews: PreviewProvider {

    static var previews: some View {
        OGNavigationBarTitle(text: "Lorem Ipsum")
    }
}
