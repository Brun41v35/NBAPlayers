//
//  PlayerList.swift
//  NBA
//
//  Created by Bruno Alves da Silva on 14/06/20.
//  Copyright © 2020 Bruno Alves da Silva. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players) {
                currentPlayer in
                NavigationLink(destination: ContentView(player: currentPlayer)) {
                    PlayerRow(player: currentPlayer).frame(height: 70)
                }
            }.navigationBarTitle(Text("NBA Finals Players"))
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
