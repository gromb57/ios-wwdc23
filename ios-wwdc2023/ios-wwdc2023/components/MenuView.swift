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
            NavigationLink("Animation") {
                AnimationView()
            }
            NavigationLink("Localization") {
                LocalizationView()
            }
            NavigationLink("Logs") {
                LogsView()
            }
            NavigationLink("SharePlay") {
                SharePlayView(viewModel: SharePlayViewModel(model: SharePlayModel()))
            }
            NavigationLink("Spatial") {
                SpatialView()
            }
            NavigationLink("UIKit") {
                UIKitView()
            }
        }
    }
}

#Preview {
    MenuView()
}
