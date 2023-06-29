//
//  Loading+Environment.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

private struct LoadingKey: EnvironmentKey {

    static var defaultValue: Bool = false
}

extension EnvironmentValues {
    
    var isLoading: Bool {
        get { self[LoadingKey.self] }
        set { self[LoadingKey.self] = newValue }
    }
}

extension View {
    
    func loading(_ loading: Bool) -> some View {
        environment(\.isLoading, loading)
    }
}
