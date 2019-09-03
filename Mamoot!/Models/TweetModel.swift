//
//  Tweet.swift
//  Mamoot!
//
//  Created by Alex Modroño Vara on 02/09/2019.
//  Copyright © 2019 Semiak & JoeyPi. All rights reserved.
//

import Foundation

// MARK: - Tweet
public class Tweet {
    public struct Profile {
        let customName: String
        let userName: String
        let instance: String?
    }

    public let author: Profile
    public let date: Date
    public let comments: Int
    public let likes: Int
    public let retweets: Int
    public let content: String
    


    public init(author: Profile,
              date: Date,
              comments: Int,
              likes: Int,
              retweets: Int,
              content: String) {
    self.author = author
    self.date = date
    self.comments = comments
    self.likes = likes
    self.retweets = retweets
    self.content = content
  }
}

// MARK: - Example
var exampleAuthor = Tweet.Profile(customName: "Semiak", userName: "semiak_", instance: "twitter.com")
var tweetExample = Tweet(author: exampleAuthor, date: Date(), comments: 100, likes: 1000, retweets: 9999999, content: "Hey, this is an example large tweet that will likely take all the 280 character limit Twitter has, but not the 500 characters limit of Mastodon.\n\nIt also has emojis 😉😴🇪🇸🥳")

var exampleTweetViewModel = TweetViewModel(tweet: tweetExample)
