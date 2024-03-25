//
//  LayeredGestures.swift
//  Project17Playground
//
//  Created by Henrieke Baunack on 3/24/24.
//

import SwiftUI

struct LayeredGestures: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .onTapGesture {
                    print("Text tapped")
                }
        }
//        // this will override the childs gesture
//        .highPriorityGesture(
//                    TapGesture()
//                        .onEnded {
//                            print("VStack tapped")
//                        }
//                )
        // if you want parent and child gesture at the same time
        .simultaneousGesture(
                    TapGesture()
                        .onEnded {
                            print("VStack tapped")
                        }
                )
//        .onTapGesture {
//            print("VStack tapped")
//        }
    }
}

#Preview {
    LayeredGestures()
}
