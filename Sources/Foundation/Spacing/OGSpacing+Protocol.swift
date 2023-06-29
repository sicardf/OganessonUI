//
//  OGSpacing+Protocol.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

protocol OGSpacingProtocol {
    
    var rawValue: CGFloat { get }
    var cgFloat: CGFloat { get }
}

extension OGSpacingProtocol {
    
    var cgFloat: CGFloat { self.rawValue }
}
