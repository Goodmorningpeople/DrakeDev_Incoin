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
        Location(name: "INCoin Vault", coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)),
        Location(name: "Christopher's House", coordinate: CLLocationCoordinate2D(latitude: 37.7849, longitude: -122.4180)),  // Adjusted
        Location(name: "Avyan's House", coordinate: CLLocationCoordinate2D(latitude: 37.7835, longitude: -122.4185)),  // Closer to vault
        Location(name: "INCoin Traced Location", coordinate: CLLocationCoordinate2D(latitude: 37.7840, longitude: -122.4182)),  // Close to both houses
        Location(name: "Thiha's House", coordinate: CLLocationCoordinate2D(latitude: 37.7740, longitude: -122.4284)),
        Location(name: "Aldo's House", coordinate: CLLocationCoordinate2D(latitude: 37.7810, longitude: -122.4184)),
        Location(name: "Astral's House", coordinate: CLLocationCoordinate2D(latitude: 37.7750, longitude: -122.4234)),
        Location(name: "Zachary's House", coordinate: CLLocationCoordinate2D(latitude: 37.7760, longitude: -122.4264))
    ]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { location in
            MapAnnotation(coordinate: location.coordinate) {
                VStack {
                    Text(location.name)
                        .font(.caption)
                        .bold()
                        .padding(5)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 3)
                    Image(systemName: "mappin.circle.fill")
                        .foregroundColor(.red)
                        .font(.title)
                }
            }
        }
        .navigationTitle("Location Tracker")
    }
}

struct LocationTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        LocationTrackerView()
    }
}
