//
//  TweetViewModel.swift
//  Mamoot!
//
//  Created by Alex Modroño Vara on 03/09/2019.
//  Copyright © 2019 Semiak & JoeyPi. All rights reserved.
//

import Foundation
import URLImage

public class TweetViewModel: ObservableObject, Identifiable {
    private let tweet: Tweet

    public init(tweet: Tweet) {
        self.tweet = tweet
    }
    
    public var customName: String { //custom twitter name.
        return tweet.author.customName
    }
    
    public var userName: String { //tweet author id (@username)
        if let instance = tweet.author.instance {
            if tweet.author.instance != "twitter.com" { //instance is not twitter.com -- if the user is on twitter.com the instance domain is not required.
                return tweet.author.userName + "@" + instance // username@instance.com
            }
        }
        return tweet.author.userName //no instance - user is on twitter.com
    }
    
    public var profilePicture: URL {
        return URL(string: "https://avatars.io/twitter/" + tweet.author.userName)!
    }
    
    public var date: String { // date the tweet was published converted to Day/Month/Year
        let date = tweet.date
        let locale = Locale.current.languageCode!
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "dd/MM/yy"
        dateFormatter.locale = Locale(identifier: locale)
        
        let dateText = dateFormatter.string(from: date)
        return dateText
    }
    
    public var comments: String { //number of comments the tweet has, formatted to friendly Ks and Ms.
        return formatPoints(num: Double(tweet.comments))
    }
    
    public var likes: String { //number of likes, formatted.
        return formatPoints(num: Double(tweet.likes))
    }
    
    public var retweets: String { //number of retweets, also formatted.
        return formatPoints(num: Double(tweet.retweets))
    }
    
    public var content: String {
        return tweet.content
    }
    
}

/// Conformance to `Hashable`
/// Grants us conformance to `Identifiable` for _free_
extension TweetViewModel: Hashable {
	public static func == (lhs: TweetViewModel, rhs: TweetViewModel) -> Bool {
		return lhs.tweet == rhs.tweet
	}

	public func hash(into hasher: inout Hasher) {
		hasher.combine(tweet)
	}
}
