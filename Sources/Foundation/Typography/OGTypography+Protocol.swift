//
//  OGTypography+Protocol.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import Foundation

protocol OGTypographyProtocol {
    
    var rawValue: CGFloat { get }
    var cgFloat: CGFloat { get }
}

extension OGTypographyProtocol {
    
    var cgFloat: CGFloat { self.rawValue }
}
