//
//  KittySnackView.swift
//  SwiftUI_theEnvironment
//
//  Created by mohamed  habib on 22/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct KittySnackView: View {
    
    var treats = Treat.demoTreats
    @State private var selectedSnackIndex = 0
    
    var body: some View {
        Form{
            Section(header: Text("Cat Treats")) {
                ForEach(treats) { treat in
                    SnackRow(treat: treat)
                        .padding()
                }
            }
            
            Section {
                KittySnackPicker()
            }
            
        }
    }
}
struct KittySnackView_Previews: PreviewProvider {
    static var previews: some View {
        KittySnackView()
    }
}
