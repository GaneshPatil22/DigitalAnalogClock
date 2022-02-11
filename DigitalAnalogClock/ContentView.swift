//
//  ContentView.swift
//  DigitalAnalogClock
//
//  Created by Patil, Ganesh on 11/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        DigitView()
    }
}

enum ClockState: String {
    case Left
    case Right
    case Top
    case Bottom
    case TopRight
    case RightBottom
    case BottomLeft
    case LeftTop
    case TopBottom
    case LeftRight
    case Neutral
}

struct DigitView: View {
    var body: some View {
        VStack {
            ForEach(0..<6) { _ in
                HStack() {
                    ForEach(0..<5) { _ in
                        ClockView()
                    }
                }
            }
        }
    }
}

struct ClockView: View {
    @State var state: ClockState = .Neutral
    var body: some View {
        ZStack {
            Circle().stroke(lineWidth: 3)
            Text(state.rawValue)
                .font(.caption2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
