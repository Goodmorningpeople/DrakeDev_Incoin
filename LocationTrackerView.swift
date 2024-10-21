import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct LocationTrackerView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    let locations: [Location] = [
        Location(name: "Location 1", coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)),
        Location(name: "Location 2", coordinate: CLLocationCoordinate2D(latitude: 37.7849, longitude: -122.4094))
    ]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { location in
            MapMarker(coordinate: location.coordinate, tint: .red)
        }
        .navigationTitle("Location Tracker")
    }
}

struct LocationTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        LocationTrackerView()
    }
}
