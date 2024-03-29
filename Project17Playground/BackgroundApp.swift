//
//  BackgroundApp.swift
//  Project17Playground
//
//  Created by Henrieke Baunack on 3/28/24.
//

import SwiftUI

struct BackgroundApp: View {
    @Environment(\.scenePhase) var scenePhase
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onChange(of: scenePhase){ oldPhase, newPhase in
                if newPhase == .active {
                    print("active")
                } else if newPhase == .inactive {
                    // e.g if you open the control settings on your phone, you can still view the scene but it's not active 
                    print("inactive")
                } else if newPhase == .background {
                    print("background")
                }
            }
    }
}

#Preview {
    BackgroundApp()
}
