//
//  OGToggleStyle+Environment.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

private struct OGToggleStyleKey: EnvironmentKey {

    static var defaultValue: any OGToggleStyle = TextToggleStyle()
}

extension EnvironmentValues {

    var ogToggleStyle: any OGToggleStyle {
        get { self[OGToggleStyleKey.self] }
        set { self[OGToggleStyleKey.self] = newValue }
    }
}

extension View {

    func ogToggleStyle(_ style: some OGToggleStyle) -> some View {
        environment(\.ogToggleStyle, style)
    }
}
