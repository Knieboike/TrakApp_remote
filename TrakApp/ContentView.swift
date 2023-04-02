//
//  ContentView.swift
//  TrakApp
//
//  Created by Nils Boike on 31.03.23.
//

import SwiftUI

struct ContentView: View {
    //dynamic approach with location
    let location: Location
    var body: some View {
        //VStack to put both in the same content view
        //VStack (Vertical Stack) HStack(Horizontal),..
        //ScrollView instead of VStack to scroll
        ScrollView{
            //Image (Image name) (built in size)
            Image(location.heroPicture)
            //won't fill out completly because of curves of the display
                .resizable()
            //scale to available space (correct space)
                .scaledToFit()
            
            Text(location.name)
            //also self adjust to dark/light mode
                .font(.largeTitle)
                .bold()
                //if text too long for 1 line, center it
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
            //avoid color, secondary -> less important (same color combined with background)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did you know?")
                .font(.title3)
                .bold()
            //padding alone (= all edges)
                .padding(.top)
            
            Text(location.more)
                .padding(.horizontal)
        }
        .navigationTitle("Discover")
        
    }
}

//ContentView_Preview is only for the Preview inside the app Xcode, not in the actual app itself

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Location.example)
    }
}
