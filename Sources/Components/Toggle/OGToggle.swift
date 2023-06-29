//
//  OGToggle.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

public struct OGToggle: View {
    
    private let isOn: Binding<Bool>
    
    @Environment(\.ogToggleStyle) var style

    public init(isOn: Binding<Bool>) {
        self.isOn = isOn
    }
    
    public var body: some View {
        AnyView(
            Toggle(isOn: isOn) {
                EmptyView()
            }
                .toggleStyle(style)
        )
    }
}

struct OGToggle_Previews: PreviewProvider {

    static var previews: some View {
        VStack {
            VStack {
                OGToggle(isOn: .constant(true))
                OGToggle(isOn: .constant(false))
            }
            VStack {
                OGToggle(isOn: .constant(true))
                OGToggle(isOn: .constant(false))
            }
            .disabled(false)
        }
    }
}
