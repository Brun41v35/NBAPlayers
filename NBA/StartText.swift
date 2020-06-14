//
//  StartText.swift
//  NBA
//
//  Created by Bruno Alves da Silva on 14/06/20.
//  Copyright © 2020 Bruno Alves da Silva. All rights reserved.
//

import SwiftUI

struct StartText: View {
    
    var starName: String
    var starValue: String
    
    var body: some View {
        HStack {
            Text(starName).font(.system(size: 25)).fontWeight(.bold).padding(.leading,30)
            Text(starValue).font(.system(size: 25)).padding(.trailing,30)
            Spacer()
        }
    }
}

struct StartText_Previews: PreviewProvider {
    static var previews: some View {
        StartText(starName: "Age", starValue: "32")
    }
}
