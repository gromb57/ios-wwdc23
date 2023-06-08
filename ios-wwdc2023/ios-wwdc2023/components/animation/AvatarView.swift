//
//  AvatarView.swift
//  ios-wwdc2023
//
//  Created by Jerome Bach on 08/06/2023.
//

import SwiftUI

struct AvatarView: View {
    var avatarImage: Image
    @State private var selected: Bool = false

        var body: some View {
            avatarImage
                .scaleEffect(selected ? 15 : 1.0)
                .onTapGesture {
                    withAnimation {
                        selected.toggle()
                    }
                }
        }
}

#Preview {
    VStack {
        AvatarView(avatarImage: Image(systemName: "person.crop.artframe"))
            .phaseAnimator([false, true]) { content, value in
                content
                    .foregroundStyle(value ? .red : .primary)
            } animation: { _ in
                    .easeInOut(duration: 1.0)
            }
    }
}
