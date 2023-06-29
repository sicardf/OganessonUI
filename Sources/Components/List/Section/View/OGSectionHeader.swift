//
//  OGSectionHeader.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct OGSectionHeader: View {
    
    var text: String

    var body: some View {
        Text(text)
    }
}

struct OGSectionHeader_Previews: PreviewProvider {

    static var previews: some View {
        OGSectionHeader(text: "Lorem Ipsum")
    }
}
