//
//  ContentView.swift
//  Mamoot!
//
//  Created by Alex Modroño Vara on 02/09/2019.
//  Copyright © 2019 Semiak & JoeyPi. All rights reserved.
//

import SwiftUI

struct TabController: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            HomePageView()
                .tabItem {
                    VStack {
                        Image(systemName: "house.fill")
                            .font(.title)
                    }
                }
                .tag(0)
                .edgesIgnoringSafeArea(.top)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "bell.fill")
                            .font(.title)
                    }
                }
                .tag(1)
        }
    }
}

struct TabController_Previews: PreviewProvider {
    static var previews: some View {
        TabController()
    }
}
