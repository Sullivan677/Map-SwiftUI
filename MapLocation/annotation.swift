import Foundation
import MapKit

struct Location {
    let id = UUID()
    let title: String
    let coordinate: CLLocationCoordinate2D
}
 
extension Location: Identifiable { }
 
extension Location {
    static func getLocation() -> [Location] {
        return [
            Location(title: "Tour Eiffel", coordinate: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945)),
            Location(title: "Sacré Coeur", coordinate: CLLocationCoordinate2D(latitude: 48.8867, longitude: 2.3431)),
            Location(title: "Arc de Triomphe", coordinate: CLLocationCoordinate2D(latitude: 48.8738, longitude: 2.2950)),
        ]
    }
}
