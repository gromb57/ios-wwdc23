//
//  ios_wwdc2023App.swift
//  ios-wwdc2023
//
//  Created by Jerome Bach on 08/06/2023.
//

import SwiftUI
import SwiftData

@main
struct ios_wwdc2023App: App {

    var body: some Scene {
        WindowGroup {
            MenuView()
        }
        .modelContainer(for: Item.self)
    }
}
