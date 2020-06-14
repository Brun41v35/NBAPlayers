//
//  PlayerRow.swift
//  NBA
//
//  Created by Bruno Alves da Silva on 14/06/20.
//  Copyright © 2020 Bruno Alves da Silva. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    
    var player: Player
    
    var body: some View {
        HStack{
            Image(player.imageName).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).background(Circle().foregroundColor(player.team.color)).font(.largeTitle)
            Text(player.name)
            Spacer()
        }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100))
    }
}
