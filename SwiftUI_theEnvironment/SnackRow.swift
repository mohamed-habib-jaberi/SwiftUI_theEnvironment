//
//  SnackRow.swift
//  SwiftUI_theEnvironment
//
//  Created by mohamed  habib on 22/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct SnackRow: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var size:CGFloat {
        return horizontalSizeClass == .compact ? 150 : 300
    }
    
    var treat: Treat
    
    var body: some View {
        HStack{
            Image(treat.imageName)
                .resizable()
                .frame(width: size, height: size)
            
            VStack(alignment: .leading){
                Text(treat.name)
                    .font(Font.system(.body))
                    .fontWeight(.bold)
                Text(treat.description)
                    .font(Font.system(.footnote))
                .lineLimit(nil)
            }
            .padding(colorScheme == .dark ? 20 : 0 )
            .background(colorScheme == .dark ? Color.red : Color.green )
        }
    }
}

struct SnackRow_Previews: PreviewProvider {
    static var previews: some View {
       
        Group {
             SnackRow(treat: Treat.demoTreats.randomElement()!)
                .previewLayout(.sizeThatFits)
                .environment(\.horizontalSizeClass, .regular)
            
            SnackRow(treat: Treat.demoTreats.randomElement()!)
                .previewLayout(.sizeThatFits)
                .environment(\.horizontalSizeClass, .compact)
            
        }
        
    }
}
