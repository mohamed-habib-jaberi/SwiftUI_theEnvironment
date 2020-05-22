//
//  SnackRow.swift
//  SwiftUI_theEnvironment
//
//  Created by mohamed  habib on 22/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct SnackRow: View {
    
    var treat: Treat
    
    var body: some View {
        HStack{
            Image(treat.imageName)
                .resizable()
                .frame(width: 200, height: 200)
            
            VStack(alignment: .leading){
                Text(treat.name)
                    .font(Font.system(.body))
                    .fontWeight(.bold)
                Text(treat.description)
                    .font(Font.system(.footnote))
                .lineLimit(nil)
            }
            
        }
    }
}

struct SnackRow_Previews: PreviewProvider {
    static var previews: some View {
        SnackRow(treat: Treat.demoTreats.randomElement()!)
    }
}
