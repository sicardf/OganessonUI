//
//  OGColor+Protocol.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import UIKit
import SwiftUI

protocol OGColorProtocol {

    var uiColor: UIColor { get }
    var color: Color { get }
}

extension OGColorProtocol {
    
    var uiColor: UIColor { UIColor(self.color) }
}
