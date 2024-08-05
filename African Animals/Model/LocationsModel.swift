//
//  LocationsModel.swift
//  African Animals
//
//  Created by Simbarashe Mupfururirwa on 2024/05/08.
//

import Foundation
import MapKit

struct LocationsModel: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
