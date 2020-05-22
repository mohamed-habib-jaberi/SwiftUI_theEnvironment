//
//  ListRow.swift
//  SwiftUI_theEnvironment
//
//  Created by mohamed  habib on 22/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ListRow: View {
    var value: Int
     
     var body: some View {
       Text("\(value)")
     }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            ListRow(value: 1)
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraExtraExtraLarge)
            
            ListRow(value: 1)
                .environment(\.horizontalSizeClass, .regular)
        }
    }
}
