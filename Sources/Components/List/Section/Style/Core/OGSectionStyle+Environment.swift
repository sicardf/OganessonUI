//
//  OGSectionStyle+Environment.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

private struct OGSectionStyleKey: EnvironmentKey {

    static var defaultValue: any OGSectionStyle = PlainOGSectionStyle()
}

extension EnvironmentValues {
    
    var ogSectionStyle: any OGSectionStyle {
        get { self[OGSectionStyleKey.self] }
        set { self[OGSectionStyleKey.self] = newValue }
    }
}

extension View {
    
    func ogSectionStyle(_ style: some OGSectionStyle) -> some View {
        environment(\.ogSectionStyle, style)
    }
}
