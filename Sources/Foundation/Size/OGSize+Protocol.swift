//
//  OGSize+Protocol.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

protocol OGSizeProtocol {
    
    var rawValue: CGFloat { get }
    var cgFloat: CGFloat { get }
}

extension OGSizeProtocol {
    
    var cgFloat: CGFloat { self.rawValue }
}
