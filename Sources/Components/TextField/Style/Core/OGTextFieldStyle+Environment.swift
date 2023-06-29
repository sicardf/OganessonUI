//
//  OGTextFieldStyle+Environment.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

private struct OGTextFieldStyleKey: EnvironmentKey {

    static var defaultValue: any OGTextFieldStyle = PlainOGTextFieldStyle()
}

extension EnvironmentValues {
    
    var ogTextFieldStyle: any OGTextFieldStyle {
        get { self[OGTextFieldStyleKey.self] }
        set { self[OGTextFieldStyleKey.self] = newValue }
    }
}

extension View {
    
    func ogTextFieldStyle(_ style: some OGTextFieldStyle) -> some View {
        environment(\.ogTextFieldStyle, style)
    }
}
