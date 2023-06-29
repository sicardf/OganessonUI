//
//  Floating+Environment.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

private struct FloatingKey: EnvironmentKey {

    static var defaultValue: Bool = false
}

extension EnvironmentValues {
    
    var isFloating: Bool {
        get { self[FloatingKey.self] }
        set { self[FloatingKey.self] = newValue }
    }
}

extension View {
    
    func floating(_ isFloating: Bool) -> some View {
        environment(\.isFloating, isFloating)
    }
}
