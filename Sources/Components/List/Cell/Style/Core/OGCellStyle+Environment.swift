//
//  OGCellStyle+Environment.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

private struct OGCellStyleKey: EnvironmentKey {

    static var defaultValue: any OGCellStyle = PlainOGCellStyle()
}

extension EnvironmentValues {
    
    var ogCellStyle: any OGCellStyle {
        get { self[OGCellStyleKey.self] }
        set { self[OGCellStyleKey.self] = newValue }
    }
}

extension View {
    
    func ogCellStyle(_ style: some OGCellStyle) -> some View {
        environment(\.ogCellStyle, style)
    }
}
