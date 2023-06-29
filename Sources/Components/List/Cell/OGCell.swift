//
//  OGCell.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

public struct OGCell: View {

    let title: String?
    let subtitle: String?
    let callout: String?
    let info: String?
    let image: Image?
    
    @Binding
    var isSelected: Bool

    @Environment(\.ogCellStyle) var style
    
    public init(title: String? = nil,
                subtitle: String? = nil,
                callout: String? = nil,
                info: String? = nil,
                image: Image? = nil,
                isSelected: Binding<Bool> = .constant(false)) {
        self.title = title
        self.subtitle = subtitle
        self.callout = callout
        self.info = info
        self.image = image
        self._isSelected = isSelected
    }

    public var body: some View {
        let configuration = OGCellStyleConfiguration(
            title: title,
            subtitle: subtitle,
            callout: callout,
            info: info,
            image: image,
            isSelected: $isSelected)

        AnyView(style.resolve(configuration: configuration))
    }
}

struct OGCell_Previews: PreviewProvider {
    
    static var previews: some View {
        OGCell(title: "Lorem ipsum")
    }
}
