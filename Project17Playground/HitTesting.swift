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
            // other option is contentShape modifier that lets us modify the shape that reacts to the taps
            // contentShape helps when you have Spacers() that usually would not be tappable
            //https://www.hackingwithswift.com/books/ios-swiftui/disabling-user-interactivity-with-allowshittesting
                .contentShape(.rect)
                .onTapGesture {
                    print("Circle tapped")
                }
                //.allowsHitTesting(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/) // this will make the circle not react to any taps, we will tapp what is behind
            
            
            
        }
    }
}

#Preview {
    HitTesting()
}
