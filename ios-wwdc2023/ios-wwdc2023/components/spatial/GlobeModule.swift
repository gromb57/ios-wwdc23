//
//  GlobeModule.swift
//  ios-wwdc2023
//
//  Created by Jerome Bach on 09/06/2023.
//

import SwiftUI
import RealityKit

/// Display a globe
struct GlobeModule: View {
    var body: some View {
        Image("GlobeHero")
            .resizable()
            .aspectRatio(contentMode: .fit)
        
        /*Model3D(named: "Globe") { model in
            model
                .resizable()
                .scaledToFit()
        } placeholder: {
              ProgressView()
        }*/
    }
}

#Preview {
    GlobeModule()
}
