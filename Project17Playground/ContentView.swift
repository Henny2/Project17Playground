//
//  ContentView.swift
//  Project17Playground
//
//  Created by Henrieke Baunack on 3/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello, World!")
                .onTapGesture(count: 2) {
                    print("Double tapped!")
                }
            Text("Hello, World!")
                .onLongPressGesture {
                    print("Long pressed!")
                }
            Text("Hello, World!")
                .onLongPressGesture(minimumDuration: 4) {
                    print("Long pressed!")
                }
            
            
//  You can even add a second closure that triggers whenever the state of the gesture has changed. This will be given a single Boolean parameter as input
            Text("Hello, World!")
                .onLongPressGesture(minimumDuration: 1) {
                    print("Long pressed!")
                } onPressingChanged: { inProgress in
                    print("In progress: \(inProgress)!")
                }
//  For more advanced gestures you should use the gesture() modifier with one of the gesture structs: DragGesture, LongPressGesture, MagnifyGesture, RotateGesture, and TapGesture. These all have special modifiers, usually onEnded() and often onChanged() too, and you can use them to take action when the gestures are in-flight (for onChanged()) or completed (for onEnded())
            // see AdvancedGesturesView
            
        }
    }
}

#Preview {
    ContentView()
}
