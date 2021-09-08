//
//  ContentView.swift
//  HW3.1
//
//  Created by emmisar on 08.09.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var colorsActive = [false, false, false]
    @State private var buttonName = "Start"
    
    var body: some View {
        Color.black
            .ignoresSafeArea(.all)
            .overlay(
                VStack(spacing: 20){
                    ColorCircle(color: .red, active: colorsActive[0])
                    ColorCircle(color: .yellow, active: colorsActive[1])
                    ColorCircle(color: .green, active: colorsActive[2])
                    Spacer()
                    Button(action: self.switchLampsTraffic, label: {
                        Text(buttonName)
                    }).foregroundColor(.white)
                    .frame(width: 100, height: 60)
                    .clipShape(Capsule())
                    .background(Color.blue)
                    .shadow(radius: 10)
                    .font(.bold(.title)())
                }
                .padding())
    }
    
    
 private func switchLampsTraffic() {
    let isOn = colorsActive.filter {$0 == true}
    
    if isOn.isEmpty {
        colorsActive[0].toggle()
        buttonName = "Next"
    } else {
        for index in 0 ..< colorsActive.count {
            if colorsActive[index] == true {
                colorsActive[index].toggle()
                if index + 1 < colorsActive.count {
                    colorsActive[index + 1].toggle()
                } else {
                    colorsActive[0].toggle()
                }
                return
            }
        }
    }
 }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
