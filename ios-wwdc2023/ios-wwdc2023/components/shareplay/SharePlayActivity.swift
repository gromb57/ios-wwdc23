//
//  SharePlayActivity.swift
//  ios-wwdc2023
//
//  Created by Jerome Bach on 08/06/2023.
//

import SwiftUI
import GroupActivities

@available(iOS 15, *)
struct SharePlayActivity: GroupActivity {
    // Define a unique activity identifier for system to reference
    static let activityIdentifier = "com.jeromebach.ios-wwdc2023.Share"

    // App-specific data so your app can launch the activity on others' devices
    let shareUUID: UUID
    let name: String

    var metadata: GroupActivityMetadata {
        var metadata = GroupActivityMetadata()
        metadata.title = "Share Together"
        metadata.subtitle = name
        metadata.previewImage = UIImage(named: "ActivityImage")?.cgImage
        metadata.type = .generic
        return metadata
    }
}
