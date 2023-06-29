//
//  Checkmark+ToggleStyle.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct CheckmarkToggleStyle: OGToggleStyle {
    
    @Environment(\.isEnabled) private var isEnabled
    
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(isEnabled ? .red : configuration.isOn ? .purple : .gray)
                .font(.system(size: 20, weight: .bold, design: .default))
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
    }
}

extension OGToggleStyle where Self == CheckmarkToggleStyle {
    static var checkmark: Self { .init() }
}

struct CheckmarkToggleStyle_Previews: PreviewProvider {

    static var previews: some View {
        Group {
            OGToggle_Previews.previews
                .ogToggleStyle(.checkmark)
        }

    }
}
