//
//  Item.swift
//  ios-wwdc2023
//
//  Created by Jerome Bach on 08/06/2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
