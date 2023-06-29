//
//  OGSectionStyle.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

// MARK: - Resolved Style

struct ResolvedOGSectionStyle<Style: OGSectionStyle>: View {

    var configuration: OGSectionStyleConfiguration

    var style: Style

    var body: some View {
        style.makeBody(configuration: configuration)
    }
}

extension OGSectionStyle {

    func resolve(configuration: Configuration) -> some View {
        ResolvedOGSectionStyle(configuration: configuration, style: self)
    }
}

// MARK: - Style Protocol

protocol OGSectionStyle: DynamicProperty {
    
    associatedtype Body: View
    
    @ViewBuilder func makeBody(configuration: Configuration) -> Body
    
    typealias Configuration = OGSectionStyleConfiguration
}

// MARK: - Style Configuration

public struct OGSectionStyleConfiguration {
    
    struct Content: View {
        var underlyingView: AnyView
        
        init(_ view: some View) {
            self.underlyingView = AnyView(view)
        }
        
        var body: some View {
            underlyingView
        }
    }
    
    var content: Content
    
    struct Header: View {
        var underlyingView: AnyView
        
        init(_ view: some View) {
            self.underlyingView = AnyView(view)
        }
        
        var body: some View {
            underlyingView
        }
    }
    
    var header: Header
    
    struct Footer: View {
        var underlyingView: AnyView
        
        init(_ view: some View) {
            self.underlyingView = AnyView(view)
        }
        
        var body: some View {
            underlyingView
        }
    }
    
    var footer: Footer
}
