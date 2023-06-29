//
//  OGTextFieldStyle.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

protocol OGTextFieldStyle: DynamicProperty {

    associatedtype Body: View

    @ViewBuilder func makeBody(configuration: Configuration) -> Body

    typealias Configuration = OGTextFieldStyleConfiguration
}
