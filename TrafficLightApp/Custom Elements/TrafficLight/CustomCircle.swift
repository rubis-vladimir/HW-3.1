//
//  CustomCircle.swift
//  TrafficLightApp
//
//  Created by Владимир Рубис on 28.07.2021.
//

import SwiftUI

struct CustomCircle: View {
    var body: some View {
        Circle()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.black, lineWidth: 4))
    }
}
