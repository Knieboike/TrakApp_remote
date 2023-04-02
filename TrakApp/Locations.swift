//
//  Locations.swift
//  TrakApp
//
//  Created by Nils Boike on 02.04.23.
//
//Store multiple location

import Foundation

//class = shared, struct= alone standing

//ObservableObject = Object can change

class Locations: ObservableObject {
    //let constant, never changes
    let places: [Location]
    // var might change
    var primary: Location {
        //first item of array
        places[0]
    }
    
    init() {
        // ! -> This will work as inteded, crash if not (force), names = Case Sensitive!
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        //convert json to swift code and decode into Location Array
        //Location.swift struct needs to be Location: Decodable
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
    
}
