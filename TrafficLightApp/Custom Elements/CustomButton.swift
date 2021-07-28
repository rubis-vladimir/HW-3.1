//
//  CustomButton.swift
//  TrafficLightApp
//
//  Created by Владимир Рубис on 28.07.2021.
//

import SwiftUI

enum CurrentSignal {
    case red
    case yellow
    case green
}

struct CustomButton: View {
    
    @State var currentSignal = CurrentSignal.red
    @State var buttonLabel = "START"
    
    @Binding var currentColorId: Int
    
    var body: some View {
        Button(action: {
            buttonLabel = "NEXT"
            switch currentSignal {
            case .red:
                currentColorId = 0
                currentSignal = .yellow
            case .yellow:
                currentColorId = 1
                currentSignal = .green
            case .green:
                currentColorId = 2
                currentSignal = .red
            }
        }, label: {
            Text(buttonLabel)
                .font(.custom("Avenir-Bold", size: 40))
                .frame(width: 150, height: 80)
                .foregroundColor(.black)
                .background(Color.gray
                                .cornerRadius(20))
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 4))
        })
    }
}
