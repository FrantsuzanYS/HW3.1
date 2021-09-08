//
//  ColorCircle.swift
//  HW3.1
//
//  Created by emmisar on 08.09.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let active: Bool
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 80, height: 80)
            .overlay(Circle()
                        .stroke(Color.white, lineWidth: 4))
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .opacity(active ? 1 : 0.5)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, active: false)
    }
}

