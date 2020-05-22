//
//  KittySnackPicker.swift
//  SwiftUI_theEnvironment
//
//  Created by mohamed  habib on 22/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct KittySnackPicker: View {
    
    let treats = Treat.demoTreats
    
    @State private var selectedSnackIndex = 0
    
    var body: some View {
        Picker(selection: $selectedSnackIndex, label: Text("Snack Type") ) {
            
            ForEach(0..<treats.count) {
                Text(self.treats[$0].name).tag($0)
            }
        }
    }
}

struct KittySnackPicker_Previews: PreviewProvider {
    static var previews: some View {
        KittySnackPicker()
    }
}
