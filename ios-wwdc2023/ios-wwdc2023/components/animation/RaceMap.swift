//
//  RaceMap.swift
//  ios-wwdc2023
//
//  Created by Jerome Bach on 08/06/2023.
//

import SwiftUI
import MapKit

struct RaceMapRoute {
    @State var rect: MKMapRect
    var start: CLLocationCoordinate2D
    var end: CLLocationCoordinate2D
    var coordinates: [CLLocationCoordinate2D] = []
    var points: [CLLocation] = []
}

struct RaceMap: View {
    let route: RaceMapRoute

    @State private var trigger = false

    var body: some View {
        Map(initialPosition: .rect(route.rect)) {
            MapPolyline(coordinates: route.coordinates)
                .stroke(.orange, lineWidth: 4.0)
            Marker("Start", coordinate: route.start)
                .tint(.green)
            Marker("End", coordinate: route.end)
                .tint(.red)
        }
        .mapCameraKeyframeAnimator(trigger: trigger, keyframes: { initialCamera in
            KeyframeTrack(\MapCamera.centerCoordinate) {
                let points = route.points
                for point in points {
                    CubicKeyframe(point.coordinate, duration: 16.0 / Double(points.count))
                }
                CubicKeyframe(initialCamera.centerCoordinate, duration: 4.0)
            }
            KeyframeTrack(\.heading) {
                CubicKeyframe(heading(from: route.start, to: route.end), duration: 6.0)
                CubicKeyframe(heading(from: route.end, to: route.end), duration: 8.0)
                CubicKeyframe(initialCamera.heading, duration: 6.0)
            }
            KeyframeTrack(\.distance) {
                CubicKeyframe(24000, duration: 4)
                CubicKeyframe(18000, duration: 12)
                CubicKeyframe(initialCamera.distance, duration: 4)
            }
        })
        .toolbar(Visibility.visible, for: ToolbarPlacement.bottomBar)
        .toolbarTitleDisplayMode(ToolbarTitleDisplayMode.large)
        .toolbar(content: {
            Button("Tour") { trigger.toggle() }
        })
    }
    
    func playTrigger() -> Bool {
        return self.trigger
    }

    func heading(from: CLLocationCoordinate2D, to: CLLocationCoordinate2D) -> Double {
        return 0
    }

    static func demoRoute() -> RaceMapRoute {
        let start = CLLocationCoordinate2D(latitude: 49.63, longitude: 6.2)
        let end = CLLocationCoordinate2D(latitude: 49.7, longitude: 6.25)
        
        let p1 = MKMapPoint(start)
        let p2 = MKMapPoint(end)

        // and make a MKMapRect using mins and spans
        let mapRect = MKMapRect(x: fmin(p1.x,p2.x), y: fmin(p1.y,p2.y), width: fabs(p1.x-p2.x), height: fabs(p1.y-p2.y))
        
        let coordinates: [CLLocationCoordinate2D] = [
            start,
            CLLocationCoordinate2D(latitude: 49.64, longitude: 6.19),
            CLLocationCoordinate2D(latitude: 49.65, longitude: 6.185),
            end
        ]
        
        let points: [CLLocation] = coordinates.map { coord in
            return CLLocation(latitude: coord.latitude, longitude: coord.longitude)
        }
        
        return RaceMapRoute(rect: mapRect, start: start, end: end, coordinates: coordinates, points: points)
    }
}

#Preview {
    RaceMap(route: RaceMap.demoRoute())
}
