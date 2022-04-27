//
//  ContentView.swift
//  FirstAnimationExample
//
//  Created by Lillian Yang on 2022-04-21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Properties
    @State var scaleFactor = 1.0
    
    //MARK: Computed Properties
    
    var body: some View {
        Circle()
            .scaleEffect(scaleFactor)
            .animation(.default)
            .onTapGesture {
                //scaleFactor = scaleFactor - 0.1
                scaleFactor -= 0.1
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
