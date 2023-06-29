//
//  Error+Environment.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

private struct ErrorKey: EnvironmentKey {

    static var defaultValue: Bool = false
}

extension EnvironmentValues {
    
    var inError: Bool {
        get { self[ErrorKey.self] }
        set { self[ErrorKey.self] = newValue }
    }
}

extension View {
    
    func error(_ inError: Bool) -> some View {
        environment(\.inError, inError)
    }
}
