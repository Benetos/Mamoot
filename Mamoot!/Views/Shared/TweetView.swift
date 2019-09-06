//
//  TweetView.swift
//  Mamoot!
//
//  Created by Alex Modroño Vara on 03/09/2019.
//  Copyright © 2019 Semiak & JoeyPi. All rights reserved.
//

import SwiftUI
import URLImage

struct TweetView: View {
    @ObservedObject var model: TweetViewModel
    @State var isLiked: Bool = false
    @State var isRetweeted: Bool = false
    
    var body: some View {
        HStack(alignment: .top) {
            URLImage(model.profilePicture)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                HStack {
                    Text(model.customName)
                        .bold()
                    Text("@" + model.userName + " · " + model.date)
                        .foregroundColor(.gray)
                }
                
                Text(model.content)
                    .lineLimit(10)
                
                HStack {
                    HStack {
                        Image(systemName: "bubble.left")
                            .foregroundColor(.gray)
                        Text(verbatim: String(model.comments))
                                .foregroundColor(.gray)
                                .lineLimit(2)
                    }
                        .padding(.top)
                        .padding(.bottom)
                        .padding(.trailing)
                        .font(.subheadline)
                    
                    Button(action: { self.isRetweeted.toggle() }) {
                        HStack {
                            Image(systemName: "arrow.2.squarepath")
                                .foregroundColor( isRetweeted ? .green : .gray)
                            Text(verbatim: String(model.retweets))
                                .foregroundColor( isRetweeted ? .green : .gray)
                                .lineLimit(2)
                        }
                        .padding()
                        .font(.subheadline)
                    }
                    
                    Button(action: {
                        withAnimation {
                            self.isLiked.toggle()
                        }
                    }) {
                        HStack {
                            Image(systemName: isLiked ? "heart.fill" : "heart")
                                .foregroundColor( isLiked ? .red : .gray)
                                .animation(.spring())
                            Text(verbatim:
                                String(model.likes))
                                .foregroundColor( isLiked ? .red : .gray)
                                .foregroundColor(.red)
                                .lineLimit(2)
                        }
                        .padding()
                        .font(.subheadline)
                    }
                    
                    
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "square.and.arrow.up")
                        }.padding()
                    }
                }
            }
        }
    }
}

struct TweetView_Previews: PreviewProvider {
    static var previews: some View {
        TweetView(model: exampleTweetViewModel)
        .previewLayout(.fixed(width: 510, height: 210))
    }
}
