//
//  Primary+ButtonStyle.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

public struct PrimaryButtonStyle: ButtonStyle {

    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(16)
            .background(configuration.isPressed ? Color.gray : Color.white)
            .labelStyle(InternalLabelStyle(configuration))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(Color.black, lineWidth: 4, antialiased: true)
                )
            .mask(
                RoundedRectangle(cornerRadius: 12)
            )
            .shadow(color: configuration.isPressed ? .black : .gray,
                    radius: 0,
                    x: configuration.isPressed ? 0 : 6,
                    y: configuration.isPressed ? 0 : 6)
            .offset(x: configuration.isPressed ? 4 : 0,
                    y: configuration.isPressed ? 4 : 0)
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
            .foregroundColor(buttonStyleConfiguration.isPressed ? .white : .black)
        }
    }
}

extension ButtonStyle where Self == PrimaryButtonStyle {
    static var primary: Self { .init() }
}

struct PrimaryButtonStyle_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            OGButton_Previews.previews
                .buttonStyle(.primary)
                .previewDisplayName("Leading")
        }
    }
}
