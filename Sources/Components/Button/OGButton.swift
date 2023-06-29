//
//  OGButton.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

public struct OGButton: View {
    
    private static let minimumDuration: TimeInterval = 0.5
    
    private let title: String?
    private let image: Image?
    private let tapAction: (() -> Void)?
    private let longPressAction: (() -> Void)?

    @State private var didLongPress = false
    @State private var longPressTask: Task<Void, Never>?
    
    public init(_ title: String? = nil,
                image: Image? = nil,
                tapAction: (() -> Void)? = nil,
                longPressAction: (() -> Void)? = nil) {
        self.title = title
        self.image = image
        self.tapAction = tapAction
        self.longPressAction = longPressAction
    }
    
    public var body: some View {
        Button(action: performActionIfNeeded) {
            Label {
                if let title { Text(title) }
            } icon: {
                image
            }
        }
        .onLongPressGesture(perform: {},
                            onPressingChanged: handleLongPress(isPressing:))
    }
    
    private func performActionIfNeeded() {
        longPressTask?.cancel()

        if didLongPress {
            didLongPress = false
        } else {
            tapAction?()
        }
    }

    private func handleLongPress(isPressing: Bool) {
        longPressTask?.cancel()

        guard longPressAction != nil else { return }
        guard isPressing else { return }

        didLongPress = false
        longPressTask = Task {
            do {
                try await Task.sleep(nanoseconds: UInt64(OGButton.minimumDuration * 1_000_000_000))
            } catch {
                return
            }
            await MainActor.run {
                didLongPress = true
                longPressAction?()
            }
        }
    }
}

struct OGButton_Previews: PreviewProvider {
    
    static let title = "Lorem ipsum"
    static let image = Image(systemName: "circle")
    
    static var previews: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 24) {
            Text("Action - Tap")
            OGButton(title, image: image, tapAction: {
                print("Action - Tap")
            })

            Text("Action - Long Press")
            OGButton(title, image: image, longPressAction: {
                print("Action - Long Press")
            })

            Text("Action - All")
            OGButton(title, image: image) {
                print("Action - Tap")
            } longPressAction: {
                print("Action - Long Press")
            }
        }
    }
}
