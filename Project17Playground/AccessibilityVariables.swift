//
//  AccessibilityVariables.swift
//  Project17Playground
//
//  Created by Henrieke Baunack on 3/30/24.
//

import SwiftUI

struct AccessibilityVariables: View {
    @Environment(\.accessibilityDifferentiateWithoutColor) var accessibilityDifferentiateWithoutColor // this will be true of false and we can adapt our app accordingly
    @Environment(\.accessibilityReduceMotion) var accessibilityReduceMotion
    @Environment(\.accessibilityReduceTransparency) var accessibilityReduceTransparency
    @State private var scale = 1.0
    var body: some View {
        VStack{
            HStack {
                if accessibilityDifferentiateWithoutColor {
                    Image(systemName: "checkmark.circle")
                }
                Text("Success")
            }
            .padding()
            .background(accessibilityDifferentiateWithoutColor ? .black : .green)
            .foregroundStyle(.white)
            .clipShape(.capsule)
    
            
            Button("Hello World") {
                if accessibilityReduceMotion {
                    scale *= 1.5
                }
                else {
                    withAnimation {
                        scale *= 1.5
                    }
                }
            }.scaleEffect(scale)
            
            Text("Hello World")
                .padding()
                .background(accessibilityReduceTransparency ? .black : .black.opacity(0.5))
                .foregroundStyle(.white)
                .clipShape(.capsule)
        }
    }
}

#Preview {
    AccessibilityVariables()
}
