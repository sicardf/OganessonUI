//
//  OGNavigationBar+Modifier.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct OGNavigationBarModifier: ViewModifier {

    var title: String?

    @Environment(\.isFloating) var isFloating
    

    func body(content: Content) -> some View {
        if isFloating {
            ZStack(alignment: .top) {
                content
                OGNavigationBar {
                    if let title {
                        OGNavigationBarTitle(text: title)
                    } else {
                        Spacer()
                    }
                }
            }
        } else {
            VStack(spacing: 0) {
                OGNavigationBar {
                    if let title {
                        OGNavigationBarTitle(text: title)
                    } else {
                        Spacer()
                    }
                }
                content
            }
        }
    }
}

extension View {

    func ogNavigationBar(title: String? = nil, floating: Bool) -> some View {
        modifier(OGNavigationBarModifier(title: title))
            .floating(floating)
    }
    
    func ogNavigationBar(title: String? = nil) -> some View {
        modifier(OGNavigationBarModifier(title: title))
    }
}

struct OGNavigationBarModifier_Previews: PreviewProvider {

    static var previews: some View {
        OGList {
            OGSection {
                ForEach(0..<10, id: \.self) { _ in
                    OGCell(title: "Lorem Ipsum")
                }
                OGCell(title: "Lorem Ipsum")
                OGCell(title: "Lorem Ipsum")
                OGCell(title: "Lorem Ipsum")
                OGCell(title: "Lorem Ipsum")
            } header: {
                Text("Header")
            } footer: {
                Text("Footer")
            }
        }
        .ogSectionStyle(.card)
        .ogNavigationBar(title: "Lorem Ipsum",
                         floating: false)
    }
}
