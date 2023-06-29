//
//  OGSection.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct OGSection<Header: View, Footer: View, Content: View>: View {

    var header: Header
    var footer: Footer
    var content: Content

    @Environment(\.ogSectionStyle) var style


    init(@ViewBuilder content: () -> Content,
         @ViewBuilder header: () -> Header,
         @ViewBuilder footer: () -> Footer) {
        self.content = content()
        self.header = header()
        self.footer = footer()
    }
    
    var body: some View {
        let configuration = OGSectionStyleConfiguration(content: .init(content),
                                                        header: .init(header),
                                                        footer: .init(footer))
        
        AnyView(style.resolve(configuration: configuration))
    }
}

struct OGSection_Previews: PreviewProvider {

    struct SectionModel: Hashable {
        var header: String
        var footer: String
        var elem: [String]
    }
    
    static let sectionModel = SectionModel(header: "Header 1", footer: "Footer 1", elem: ["Elem 1", "Elem 2", "Elem 3"])
    
    static var previews: some View {
        OGSection {
            ForEach(sectionModel.elem, id: \.self) { elem in
                Text(elem)
            }
        } header: {
            Text(sectionModel.header)
        } footer: {
            Text(sectionModel.footer)
        }
    }
}
