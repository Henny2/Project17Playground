//
//  HitTesting.swift
//  Project17Playground
//
//  Created by Henrieke Baunack on 3/24/24.
//

import SwiftUI

struct HitTesting: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 200, height: 200)
                .onTapGesture {
                    print("Rect tapped")
                }
            Circle()
                .fill(.red)
                .frame(width:200, height: 200)
                .onTapGesture {
                    print("Circle tapped")
                }
        }
    }
}

#Preview {
    HitTesting()
}
