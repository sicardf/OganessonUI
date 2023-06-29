//
//  Plain+OGTextFieldStyle.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct PlainOGTextFieldStyle: OGTextFieldStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.header
            configuration.content
            configuration.footer
        }
        .background(Color.red)
    }
}

extension OGTextFieldStyle where Self == PlainOGTextFieldStyle {
    static var plain: Self { .init() }
}
