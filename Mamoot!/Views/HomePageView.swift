//
//  HomePageView.swift
//  Mamoot!
//
//  Created by Alex Modroño Vara on 02/09/2019.
//  Copyright © 2019 Semiak & JoeyPi. All rights reserved.
//

import SwiftUI

struct HomePageView: View {
    
    var body: some View {
        NavigationView {
            List(0 ..< 5) { item in
                TweetView(model: exampleTweetViewModel)
            }
            .navigationBarTitle("Your feed")
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
