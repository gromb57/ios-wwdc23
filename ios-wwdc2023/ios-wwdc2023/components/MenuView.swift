//
//  MenuView.swift
//  ios-wwdc2023
//
//  Created by Jerome Bach on 08/06/2023.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("ContentView") {
                ContentView()
            }
            NavigationLink("SharePlay") {
                SharePlayView(viewModel: SharePlayViewModel(model: SharePlayModel()))
            }
        }
    }
}

#Preview {
    MenuView()
}
