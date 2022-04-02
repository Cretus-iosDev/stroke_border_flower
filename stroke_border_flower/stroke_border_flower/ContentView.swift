//
//  ContentView.swift
//  tap_to_record
//
//  Created by rutik maraskolhe on 02/04/22.
//

import SwiftUI

struct ContentView: View {
    @State var showStroke = false
    @State var growFlower = false
    let bg = Color(red: 0, green: 0, blue: 0)
    var body: some View {
        ZStack {
            bg
                .scaleEffect(1.2)
            
            Capsule()
                .strokeBorder(lineWidth: showStroke ? 1 : 90 , antialiased: false)
                .frame(width: 180, height: 280)
                .foregroundColor(.white)
                .animation(Animation.interpolatingSpring(stiffness: 60, damping: 15).delay(1))
                .onAppear() {
                    self.showStroke.toggle()
            }
            
            ZStack {
                Image("left_90")
                    .rotationEffect(.degrees(0), anchor: .top)
                    .offset(x: -38, y: 78)
                Image("right_90")
                    .rotationEffect(.degrees(0), anchor: .bottom)
                    .offset(x: 38, y: 78)
                Image("biggest")
                Image("left_60")
                    .rotationEffect(.degrees(0), anchor: .bottom)
                    .offset(x: -38, y: 56)
                Image("right_60")
                    .rotationEffect(.degrees(0), anchor: .bottom)
                    .offset(x: 38, y: 56)
                Image("left_30")
                    .rotationEffect(.degrees(0), anchor: .bottom)
                    .offset(x: -32, y: 35)
                Image("right_30")
                    .rotationEffect(.degrees(0), anchor: .bottom)
                .offset(x: 32, y: 35)
            }.scaleEffect(growFlower ? 1 : 0, anchor: .bottom)
                .animation(Animation.interpolatingSpring(stiffness: 60, damping: 10).delay(1.02))
                .onAppear() {
                    self.growFlower.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
