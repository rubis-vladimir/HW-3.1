//
//  Substrate.swift
//  TrafficLightApp
//
//  Created by Владимир Рубис on 28.07.2021.
//

import SwiftUI

struct Substrate: View {
    var body: some View {
        Rectangle()
            .frame(width: 120, height: 360)
            .cornerRadius(20)
            .foregroundColor(.secondary)
            .overlay(RoundedRectangle(cornerRadius:20).stroke(Color.black, lineWidth: 4))
    }
}
