//
//  CardView.swift
//  ios-wwdc2023
//
//  Created by Jerome Bach on 09/06/2023.
//

import SwiftUI

struct CardView: View {
    let title: LocalizedStringResource
    let subtitle: LocalizedStringResource

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.accentColor)
            VStack {
                Text(title)
                Text(subtitle)
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    CardView(title: "Title", subtitle: "Subtitle")
}
