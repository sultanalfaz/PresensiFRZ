//
//  EnterAbsentView.swift
//  PresensiFRZ
//
//  Created by Sultan Alfaz on 19/04/22.
//

import MapKit
import SwiftUI

struct location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct EnterAbsentView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D (latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan (latitudeDelta: 0.2, longitudeDelta: 0.2))
        
    let locations = [
        location(name: "Jakarta", coordinate: CLLocationCoordinate2D (latitude: 51.501, longitude: -0.141))
    ]
    
    var body: some View {
        Map(coordinateRegion: $mapRegion)
    }
}

struct EnterAbsentView_Previews: PreviewProvider {
    static var previews: some View {
        EnterAbsentView()
    }
}
