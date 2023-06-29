//
//  Secondary+ButtonStyle.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

public struct SecondaryButtonStyle: ButtonStyle {

    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .labelStyle(InternalLabelStyle(configuration))

    }
    
    struct InternalLabelStyle: LabelStyle {
        
        private let buttonStyleConfiguration: ButtonStyleConfiguration
        
        init(_ buttonStyleConfiguration: ButtonStyleConfiguration) {
            self.buttonStyleConfiguration = buttonStyleConfiguration
        }
        
        public func makeBody(configuration: Configuration) -> some View {
            HStack(spacing: OGSpacing.xxSmall.cgFloat) {
                configuration.icon
                configuration.title
            }
            .foregroundColor(buttonStyleConfiguration.isPressed ? .gray : .black)
        }
    }
}

extension ButtonStyle where Self == SecondaryButtonStyle {
    static var secondary: Self { .init() }
}

struct SecondaryButtonStyle_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            OGButton_Previews.previews
                .buttonStyle(.secondary)
                .previewDisplayName("Leading")
        }
    }
}
