//  ContentView.swift
//  NBA
//  Created by Bruno Alves da Silva on 12/06/20.
//  Copyright © 2020 Bruno Alves da Silva. All rights reserved.

import SwiftUI

struct ContentView: View {
    
    var player: Player
    
    var body: some View {
        VStack {
            Image(player.team.imageName).resizable().aspectRatio(contentMode: .fit)
            
            Image(player.imageName).clipShape(Circle()).background(Circle().foregroundColor(.white)).overlay(Circle().stroke(Color.white, lineWidth: 4)).offset(x: 0, y: -90).padding(.bottom, -70).shadow(radius: 20)
            
            Text(player.name).font(.system(size: 30)).fontWeight(.bold)
            StartText(starName: "Age:", starValue: "\(player.age)")
            StartText(starName: "Heigth:", starValue: player.height)
            StartText(starName: "Weight:", starValue: "\(player.weight)")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(player: players[1])
    }
}
