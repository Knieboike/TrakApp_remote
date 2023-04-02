//
//  TrakAppApp.swift
//  TrakApp
//
//  Created by Nils Boike on 31.03.23.
//

import SwiftUI

@main
struct TrakAppApp: App {
    var body: some Scene {
        WindowGroup {
            // First Thing to Show: ContentView
            NavigationView{
                //ContentView(location: Location.example)
                //first location will load
                ContentView(location: Locations().primary)
            }
            
        }
    }
}
