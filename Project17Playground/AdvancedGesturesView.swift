//
//  AdvancedGesturesView.swift
//  Project17Playground
//
//  Created by Henrieke Baunack on 3/12/24.
//

import SwiftUI

struct AdvancedGesturesView: View {
    @State private var currentAmount = 0.0 // current scale change
    @State private var finalAmount = 1.0 // after user stops the gesture we need to save the amount they stopped at
    
    @State private var currentAngle = Angle.zero
    @State private var finalAngle = Angle.zero
    var body: some View {
        //  For more advanced gestures you should use the gesture() modifier with one of the gesture structs: DragGesture, LongPressGesture, MagnifyGesture, RotateGesture, and TapGesture. These all have special modifiers, usually onEnded() and often onChanged() too, and you can use them to take action when the gestures are in-flight (for onChanged()) or completed (for onEnded())
        VStack {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .scaleEffect(finalAmount + currentAmount)
//                .gesture(
//                    MagnifyGesture()
//                        .onChanged{ value in
//                            currentAmount = value.magnification - 1 // we only want the change
//                        }
//                        .onEnded { value in
//                            finalAmount += currentAmount
//                            currentAmount = 0 // when we stop changing the size, the current amount is set to 0
//                        }
//                )
//            Spacer()
            Text("Rotate me")
                .rotationEffect(finalAngle + currentAngle)
                .gesture(
                    RotateGesture()
                        .onChanged { angle in
                            currentAngle = angle.rotation
                        }
                        .onEnded { angle in
                            finalAngle += currentAngle
                            currentAngle = .zero
                        }
                )
        }
    }
}

#Preview {
    AdvancedGesturesView()
}
