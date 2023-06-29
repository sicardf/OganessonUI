//
//  List+OGSectionStyle.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct ListLabelGroupStyle: OGSectionStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            OGSectionDivided {
                configuration.header
                configuration.content
                configuration.footer
            }
        }
    }
}

extension OGSectionStyle where Self == ListLabelGroupStyle {
    static var list: Self { .init() }
}

struct ListLabelGroupStyle_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            OGList_Previews.previews
                .ogSectionStyle(.list)
        }
    }
}
