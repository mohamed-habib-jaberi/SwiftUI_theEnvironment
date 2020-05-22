//
//  ContentView.swift
//  SwiftUI_theEnvironment
//
//  Created by mohamed  habib on 21/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                if horizontalSizeClass == .regular {
                    Image("FlyingFish")
                        .resizable()
                        .frame(width: 200, height: 200, alignment: .center)
                }
                
                KittySnackView()
            }
            .navigationBarTitle(Text("Browse Kitty Snacks"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}
