//
//  TrakAppApp.swift
//  TrakApp
//
//  Created by Nils Boike on 31.03.23.
//

//"SF Symbols" to View all Available Icons

import SwiftUI

@main
struct TrakAppApp: App {
    //@StateObject for class other times @State
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView{
                    // First Thing to Show: ContentView
                    //ContentView(location: Location.example)
                    //first location will load
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    //systemName, preinstalled assets in Xcode (built in)
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView{
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
            }
            .environmentObject(locations)
            
            
            
        }
    }
}
