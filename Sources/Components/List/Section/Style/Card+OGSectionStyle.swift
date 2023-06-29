//
//  Card+OGSectionStyle.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct CardOGSectionStyle: OGSectionStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            configuration.header.bold()
                .padding(12)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .strokeBorder(Color.black, lineWidth: 2, antialiased: true)
                    )
                .mask(
                    RoundedRectangle(cornerRadius: 6)
                )
                .shadow(color: .black,
                        radius: 0,
                        x: 4,
                        y: 4)
            configuration.content
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .strokeBorder(Color.black, lineWidth: 2, antialiased: true)
                    )
                .mask(
                    RoundedRectangle(cornerRadius: 6)
                )
                .shadow(color: .black,
                        radius: 0,
                        x: 2,
                        y: 2)
            
            configuration.footer
                .padding(.horizontal, 4)
        }
        .padding(.bottom, 12)
    }
}

extension OGSectionStyle where Self == CardOGSectionStyle {
    static var card: Self { .init() }
}

struct CardOGSectionStyle_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            OGList_Previews.previews
                .ogSectionStyle(.card)
        }
    }
}
