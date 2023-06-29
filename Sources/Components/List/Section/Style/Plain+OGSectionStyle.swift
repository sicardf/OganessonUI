//
//  Plain+OGSectionStyle.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct PlainOGSectionStyle: OGSectionStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.header
            configuration.content
            configuration.footer
        }
        .background(Color.red)
    }
}

extension OGSectionStyle where Self == PlainOGSectionStyle {
    static var plain: Self { .init() }
}

struct PlainOGSectionStyle_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            OGList_Previews.previews
                .ogSectionStyle(.plain)
        }
    }
}
