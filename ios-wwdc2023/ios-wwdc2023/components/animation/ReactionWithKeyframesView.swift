//
//  ReactionWithKeyframesView.swift
//  ios-wwdc2023
//
//  Created by Jerome Bach on 08/06/2023.
//

import SwiftUI

struct ReactionWithKeyframesView: View {
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
            .keyframeAnimator(initialValue: AnimationValues()) { content, value in
                    content
                        .foregroundStyle(.red)
                        .rotationEffect(value.angle)
                        .scaleEffect(value.scale)
                        .scaleEffect(y: value.verticalStretch)
                        .offset(y: value.verticalTranslation)
                    } keyframes: { _ in
                        KeyframeTrack(\.angle) {
                            CubicKeyframe(.zero, duration: 0.58)
                            CubicKeyframe(.degrees(16), duration: 0.125)
                            CubicKeyframe(.degrees(-16), duration: 0.125)
                            CubicKeyframe(.degrees(16), duration: 0.125)
                            CubicKeyframe(.zero, duration: 0.125)
                        }

                        KeyframeTrack(\.verticalStretch) {
                            CubicKeyframe(1.0, duration: 0.1)
                            CubicKeyframe(0.6, duration: 0.15)
                            CubicKeyframe(1.5, duration: 0.1)
                            CubicKeyframe(1.05, duration: 0.15)
                            CubicKeyframe(1.0, duration: 0.88)
                            CubicKeyframe(0.8, duration: 0.1)
                            CubicKeyframe(1.04, duration: 0.4)
                            CubicKeyframe(1.0, duration: 0.22)
                        }
                        
                        KeyframeTrack(\.scale) {
                            LinearKeyframe(1.0, duration: 0.36)
                            SpringKeyframe(1.5, duration: 0.8, spring: .bouncy)
                            SpringKeyframe(1.0, spring: .bouncy)
                        }

                        KeyframeTrack(\.verticalTranslation) {
                            LinearKeyframe(0.0, duration: 0.1)
                            SpringKeyframe(20.0, duration: 0.15, spring: .bouncy)
                            SpringKeyframe(-60.0, duration: 1.0, spring: .bouncy)
                            SpringKeyframe(0.0, spring: .bouncy)
                        }
                    }
        }
    }
    
    /// Advanced animation
    func keyframe() {
        // Keyframes
        let myKeyframes = KeyframeTimeline(initialValue: CGPoint.zero) {
            KeyframeTrack(\.x) {
                // do something
            }
            KeyframeTrack(\.y) {
                // do something
            }
        }

        // Duration in seconds
        let duration: TimeInterval = myKeyframes.duration

        // Value for time
        let value = myKeyframes.value(time: 1.2)
    }
}

#Preview {
    ReactionWithKeyframesView()
}
