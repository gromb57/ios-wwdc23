//
//  SharePlayViewModel.swift
//  ios-wwdc2023
//
//  Created by Jerome Bach on 08/06/2023.
//

import SwiftUI
import GroupActivities

@MainActor
class SharePlayViewModel: ObservableObject {
    
    @Published private var model: SharePlayModel

    init(model: SharePlayModel) {
        self.model = model
    }
    
    func startSharing() {
        Task {
            do {
                _ = try await SharePlayActivity(shareUUID: UUID(), name: "Share activity").activate()
            } catch {
                print("Failed to activate SharePlay activity: \(error)")
            }
        }
    }

    var tasks = Set<Task<Void, Never>>()
    var messenger: GroupSessionMessenger?

    func configureGroupSession(_ session: GroupSession<SharePlayActivity>) {
        let messenger = GroupSessionMessenger(session: session)
        self.messenger = messenger

        let task = Task {
            for await (sharePlayModel, _) in messenger.messages(of: SharePlayModel.self) {
                handle(sharePlayModel)
            }
        }
        tasks.insert(task)

        session.join()
    }

    func handle(_ model: SharePlayModel) {
        withAnimation {
            self.model = model
        }
    }

    func send(_ model: SharePlayModel) {
        Task {
            do {
                try await messenger?.send(model)
            } catch {
                print("Send SharePlayModel failed: \(error)")
            }
        }
    }
}
