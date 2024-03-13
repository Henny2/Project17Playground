//
//  AdvancedGesturesView.swift
//  Project17Playground
//
//  Created by Henrieke Baunack on 3/12/24.
//

import SwiftUI

struct AdvancedGesturesView: View {
    var body: some View {
//  For more advanced gestures you should use the gesture() modifier with one of the gesture structs: DragGesture, LongPressGesture, MagnifyGesture, RotateGesture, and TapGesture. These all have special modifiers, usually onEnded() and often onChanged() too, and you can use them to take action when the gestures are in-flight (for onChanged()) or completed (for onEnded())
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    AdvancedGesturesView()
}
