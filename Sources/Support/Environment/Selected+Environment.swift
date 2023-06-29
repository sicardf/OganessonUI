//
//  Selected+Environment.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

private struct SelectedKey: EnvironmentKey {

    static var defaultValue: Bool = false
}

extension EnvironmentValues {
    
    var isSelected: Bool {
        get { self[SelectedKey.self] }
        set { self[SelectedKey.self] = newValue }
    }
}

extension View {
    
    func selected(_ isSelected: Bool) -> some View {
        environment(\.isSelected, isSelected)
    }
}
