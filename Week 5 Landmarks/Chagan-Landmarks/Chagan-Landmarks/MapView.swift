/*
Assignment #5
Ajay Chagan
Sep 18 2026
 
Map View 
*/

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.591724, longitude: -122.355537),
            span: MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3)
        )
    }
}

#Preview {
    MapView()
}
