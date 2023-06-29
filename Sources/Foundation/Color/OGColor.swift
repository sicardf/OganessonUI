//
//  OGColor.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import UIKit
import SwiftUI

public enum OGColor: OGColorProtocol {

    case primary
    case secondary
    case tertiary
    case background
    
    var color: Color {
        switch self {
        case .primary:
            return Color("primary", bundle: .oganessonUI)
        case .secondary:
            return Color("secondary", bundle: .oganessonUI)
        case .tertiary:
            return Color("tertiary", bundle: .oganessonUI)
        case .background:
            return Color("background", bundle: .oganessonUI)
        }
    }
}
