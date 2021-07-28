//
//  ContentView.swift
//  TrafficLightApp
//
//  Created by Владимир Рубис on 28.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentColorId = 3
    
    var body: some View {
        VStack {
            Spacer()
            
            TrafficLight(currentColorId: self.$currentColorId)
                .padding(.bottom, 60.0)
            
            CustomButton(currentColorId: self.$currentColorId)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
