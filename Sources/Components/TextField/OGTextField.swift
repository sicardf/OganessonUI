//
//  OGTextField.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct OGTextField: View {

    @Environment(\.ogTextFieldStyle) var style

    init() {}
    
    var body: some View {
        let configuration = OGTextFieldStyleConfiguration(content: .init(EmptyView()),
                                                          header: .init(EmptyView()),
                                                          footer: .init(EmptyView()))
        
        AnyView(style.resolve(configuration: configuration))
    }
}

struct OGTextField_Previews: PreviewProvider {
    
    static var previews: some View {
        OGTextField()
    }
}
