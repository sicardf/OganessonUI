//
//  OGSectionFooter.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct OGSectionFooter: View {
    
    var text: String

    var body: some View {
        Text(text)
    }
}

struct OGSectionFooter_Previews: PreviewProvider {

    static var previews: some View {
        OGSectionFooter(text: "Lorem Ipsum")
    }
}
