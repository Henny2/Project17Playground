//
//  TimerView.swift
//  Project17Playground
//
//  Created by Henrieke Baunack on 3/28/24.
//

import SwiftUI

struct TimerView: View {
    @State private var counter = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect() // timer triggering every second
    // autoconnect makes sure the timer starts right away (on load basically)
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onReceive(timer) { time in
                if counter <= 5 {
                    print("the time now is \(time)")
                    counter += 1
                }
                else {
                    cancelTimer()
                }
            }
    }
    // canceling timer
    func cancelTimer() {
        timer.upstream.connect().cancel()
    }
}

#Preview {
    TimerView()
}
