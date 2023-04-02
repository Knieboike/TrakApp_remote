//
//  WorldView.swift
//  TrakApp
//
//  Created by Nils Boike on 02.04.23.
//

// imports Alphabetical Order

import MapKit
import SwiftUI


struct WorldView: View {
    // Will receive the environmentObject which was given in the TrakApp
    @EnvironmentObject var locations: Locations
    //starting region, @State: Keep Data Alive
    
    //FUTURE WORK: ADD OWN REGION
    // span = zoom lvl of the map
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 48.783333, longitude: 9.183333),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
        )
    var body: some View {
        //read and write region data using $
        Map(coordinateRegion: $region, annotationItems: locations.places) {
            location in
            //Draw sth. on screen
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)){
                Image(location.country)
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 80, height: 40)
                    .shadow(radius: 3)
            }
        }
            .navigationTitle("Locations")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
