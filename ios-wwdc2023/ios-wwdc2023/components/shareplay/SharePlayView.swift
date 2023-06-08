//
//  SharePlayView.swift
//  ios-wwdc2023
//
//  Created by Jerome Bach on 08/06/2023.
//

import SwiftUI

struct SharePlayView: View {
    @ObservedObject var viewModel: SharePlayViewModel

    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button {
                viewModel.startSharing()
            } label: {
                Label("Share Play", systemImage: "shareplay")
            }
        }.task {
            for await session in SharePlayActivity.sessions() {
                viewModel.configureGroupSession(session)
            }
        }
    }
    
}

@MainActor
#Preview {
    SharePlayView(viewModel: SharePlayViewModel(model: SharePlayModel()))
}
