//
//  ContentView.swift
//  SpinningStar
//
//  Created by Lillian Yang on 2022-04-27.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: STORED PROPERTIES
    
    // 1. Initial state of rotation for the star
    @State var starRotation = 0.0
    
    // 1. Initial opacity for unfilled star
    
    @State var unfilledStarOpacity = 1.0 // Opaque
    
    //MARK: COMPUTED PROPERTIES
    
    
    var body: some View {
       Image(systemName: "star")
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.yellow)
            .rotation3DEffect(.degrees(starRotation), axis: (x: 0, y: 1, z: 0))
            .opacity(unfilledStarOpacity)
        // 2. Trigger the state change with a tap
            .onTapGesture {
                withAnimation(
                    Animation
                        .easeInOut(duration: 2.0)
                ) {
                    // 3. Rotate the star twice (change rotation state)
                    starRotation += 360 * 2
                    
                        // 3. Desired end opacity for unfilled star
                    unfilledStarOpacity = 0.0 // transparent
                }
               
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
