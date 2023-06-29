//
//  OGTextFieldStyle+Configuration.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct OGTextFieldStyleConfiguration {

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
