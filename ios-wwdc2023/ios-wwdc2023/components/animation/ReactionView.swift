//
//  ReactionView.swift
//  ios-wwdc2023
//
//  Created by Jerome Bach on 08/06/2023.
//

import SwiftUI

struct ReactionView: View {
    @State var reactionCount: Int = 0

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "apple.logo")
                    .resizable(resizingMode: .tile)
                    .frame(width: 88, height: 88)
                Image(systemName: "logo.playstation")
                    .resizable(resizingMode: .tile)
                    .frame(width: 88, height: 88)
                Image(systemName: "logo.xbox")
                    .resizable(resizingMode: .tile)
                    .frame(width: 88, height: 88)
            }
            .phaseAnimator(
                Phase.allCases,
                trigger: reactionCount
            ) { content, phase in
                content
                    .scaleEffect(phase.scale)
                    .offset(y: phase.verticalOffset)
            } animation: { phase in
                switch phase {
                case .initial: .smooth
                case .move: .easeInOut(duration: 0.3)
                case .scale: .spring(
                    duration: 0.3, bounce: 0.7)
                }
            }
            Button("React") {
                self.reactionCount += 1
            }
        }
    }
}

enum Phase: CaseIterable {
    case initial
    case move
    case scale

    var verticalOffset: Double {
        switch self {
        case .initial: 0
        case .move, .scale: -64
        }
    }

    var scale: Double {
        switch self {
        case .initial: 1.0
        case .move: 1.1
        case .scale: 1.8
        }
    }
}

#Preview {
    ReactionView()
}
