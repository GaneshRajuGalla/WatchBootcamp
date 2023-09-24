//
//  MapBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI
import MapKit
import CoreLocation
import CoreLocationUI

struct MapBootcamp: View {
    
    // MARK: - Properties
    
    @StateObject private var manager = LocationManager()
    @State private var userTrackingModel:MapUserTrackingMode = .follow
    
    // MARK: - Body
    
    var body: some View {
        ZStack{
            var cameraPosition: MapCameraPosition {
                MapCameraPosition.region(manager.region)
            }
             Map(position: .constant(cameraPosition), bounds: nil, interactionModes: .all, scope: nil)
            
            //Map(coordinateRegion: $manager.region,showsUserLocation: true, userTrackingMode: $userTrackingModel)
        }
    }
}

#Preview {
    MapBootcamp()
}

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate{
    
    
    let manager = CLLocationManager()
    @Published var location = CLLocation()
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 0, longitude: 0), latitudinalMeters: 1000, longitudinalMeters: 1000)
    
    override init() {
        super.init()
        self.manager.delegate = self
        self.manager.requestWhenInUseAuthorization()
        self.manager.desiredAccuracy = kCLLocationAccuracyBest
        self.manager.distanceFilter = 2
        self.manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        region.center.latitude = 139.7673068
        region.center.longitude = 35.680959
    }
}
