//
//  ContentView.swift
//  TrakApp
//
//  Created by Nils Boike on 31.03.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //VStack to put both in the same content view
        VStack{
            //Image (Image name) (built in size)
            Image("highlands")
            //won't fill out completly because of curves of the display
                .resizable()
            //scale to available space (correct space)
                .scaledToFit()
            
            Text("The Highlands")
                .font(.largeTitle)
                .bold()
                //if text too long for 1 line, center it
                .multilineTextAlignment(.center)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
