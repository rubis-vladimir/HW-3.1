//
//  TraficLight.swift
//  TrafficLightApp
//
//  Created by Владимир Рубис on 28.07.2021.
//

import SwiftUI

private let colorCircle: [Color] = [.red, .yellow, .green]

struct TrafficLight: View {
    
    @Binding var currentColorId: Int
    
    var body: some View {
        ZStack {
            Substrate()
            VStack {
                ForEach(0..<3) { num in
                    CustomCircle()
                        .foregroundColor(
                            colorCircle[num].opacity(currentColorId == num ? 1.0 : 0.3))
                }
            }
        }
    }
}

