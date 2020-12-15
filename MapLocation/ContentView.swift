import SwiftUI
import MapKit

struct ContentView: View {

    @State private var locations: [Location] = Location.getLocation()
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522), span: MKCoordinateSpan(latitudeDelta: 0.12, longitudeDelta: 0.12))

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent:  { (location) -> MapAnnotation<<#Content: View#>> in
            MapAnnotation(coordinate: location.coordinate, tint: .green)
        }).edgesIgnoringSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
