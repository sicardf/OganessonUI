//
//  OGTextFieldStyle+Resolved.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct ResolvedOGTextFieldStyle<Style: OGTextFieldStyle>: View {

    var configuration: OGTextFieldStyleConfiguration

    var style: Style

    var body: some View {
        style.makeBody(configuration: configuration)
    }
}

extension OGTextFieldStyle {

    func resolve(configuration: Configuration) -> some View {
        ResolvedOGTextFieldStyle(configuration: configuration, style: self)
    }
}
