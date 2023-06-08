//
//  AnimationView.swift
//  ios-wwdc2023
//
//  Created by Jerome Bach on 08/06/2023.
//

import SwiftUI

struct AnimationView: View {
    var body: some View {
        VStack {
            ReactionView()
            ReactionWithKeyframesView()
            RaceMap(route: RaceMap.demoRoute())
        }
    }
}

#Preview {
    AnimationView()
}
