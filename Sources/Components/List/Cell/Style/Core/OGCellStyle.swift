//
//  OGCellStyle.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

// MARK: - Resolved Style

struct ResolvedOGCellStyle<Style: OGCellStyle>: View {

    var configuration: OGCellStyleConfiguration

    var style: Style

    var body: some View {
        style.makeBody(configuration: configuration)
    }
}

extension OGCellStyle {

    func resolve(configuration: Configuration) -> some View {
        ResolvedOGCellStyle(configuration: configuration, style: self)
    }
}

// MARK: - Style Protocol

protocol OGCellStyle: DynamicProperty {

    associatedtype Body: View

    @ViewBuilder func makeBody(configuration: Configuration) -> Body

    typealias Configuration = OGCellStyleConfiguration
}

// MARK: - Style Configuration

struct OGCellStyleConfiguration {

    let title: String?
    let subtitle: String?
    let callout: String?
    let info: String?
    let image: Image?
    
    @Binding
    var isSelected: Bool
}
