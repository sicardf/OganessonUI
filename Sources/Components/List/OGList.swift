//
//  OGList.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct OGList<Content: View>: View {
    
    var content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                content
            }
            .padding(12)
        }
    }
}

struct OGList_Previews: PreviewProvider {

    struct SectionModel: Hashable {
        var header: String
        var footer: String
        var elem: [String]
    }
    
    static let sectionModel = [SectionModel(header: "Header 1", footer: "Footer 1", elem: ["Elem 1", "Elem 2", "Elem 3"]),
                               SectionModel(header: "Header 2", footer: "Footer 2", elem: ["Elem 21", "Elem 22", "Elem 23"])]
    
    static var previews: some View {
        OGList {
            OGSection {
                ForEach(sectionModel[0].elem, id: \.self) { elem in
                    OGCell(title: elem)
                        .ogCellStyle(.plain)
                }
            } header: {
                Text(sectionModel[0].header)
            } footer: {
                Text(sectionModel[0].footer)
            }
            OGSection {
                ForEach(sectionModel[1].elem, id: \.self) { elem in
                    OGCell(title: elem)
                        .ogCellStyle(.plain)
                }
            } header: {
                Text(sectionModel[1].header)
            } footer: {
                Text(sectionModel[1].footer)
            }
        }
    }
}
