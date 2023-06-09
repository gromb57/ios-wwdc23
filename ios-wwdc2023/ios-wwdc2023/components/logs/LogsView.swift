//
//  LogsView.swift
//  ios-wwdc2023
//
//  Created by Jerome Bach on 09/06/2023.
//

import SwiftUI
import OSLog

fileprivate let logger = Logger(subsystem: "wwdc23", category: "logs")

struct LogsView: View {
    @State private var name: String = ""

    var body: some View {
        VStack {
            Form {
                Section("Account Informations") {
                    TextField("Name", text: $name)
                }
            }
        }.onAppear {
            logger.info("LogsView appear")
        }
    }
}

#Preview {
    LogsView()
}
