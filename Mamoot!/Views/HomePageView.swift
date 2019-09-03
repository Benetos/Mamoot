//
//  HomePageView.swift
//  Mamoot!
//
//  Created by Alex Modroño Vara on 02/09/2019.
//  Copyright © 2019 Semiak & JoeyPi. All rights reserved.
//

import SwiftUI

struct HomePageView: View {

	var tweets: [Tweet]

    var body: some View {
        NavigationView {
			List {
				ForEach(tweets.map({ TweetViewModel(tweet: $0) }), id: \.self) { tweetVM in
					TweetView(model: tweetVM)
				}
            }
            .navigationBarTitle("Your feed")
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
		HomePageView(tweets: Tweet.generateSample(size: 5))
    }
}
