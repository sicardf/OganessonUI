//
//  OGSection+Init.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

extension OGSection where Header == EmptyView {
    
    init(@ViewBuilder content: () -> Content,
         @ViewBuilder footer: () -> Footer) {
        self.content = content()
        self.header = EmptyView()
        self.footer = footer()
    }
}

extension OGSection where Footer == EmptyView {
    
    init(@ViewBuilder content: () -> Content,
         @ViewBuilder header: () -> Header) {
        self.content = content()
        self.header = header()
        self.footer = EmptyView()
    }
}

extension OGSection where Header == EmptyView, Footer == EmptyView {
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
        self.header = EmptyView()
        self.footer = EmptyView()
    }
}

extension OGSection where Content == OGSectionStyleConfiguration.Content,
                          Header == OGSectionStyleConfiguration.Header,
                          Footer == OGSectionStyleConfiguration.Footer {

    init(_ configuration: OGSectionStyleConfiguration) {
        self.content = configuration.content
        self.header = configuration.header
        self.footer = configuration.footer
    }
}
