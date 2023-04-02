//
//  Location.swift
//  TrakApp
//
//  Created by Nils Boike on 02.04.23.
//

// Should hold all data which are in the locations.json file

import Foundation

// Custom data strucutre called Location

struct Location: Decodable{
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    // Small self created example without reading the .json file
    // static = created only once and shared between all locations instead of creating infinity times
    static let example = Location(id: 1, name: "Great Smokey Mountains", country: "United States", description: "A great place to visit.", more: "More text here.", latitude: 36.6532, longitude: -83.5070, heroPicture: "smokies", advisory: "Beware of the bears!")
    
}
