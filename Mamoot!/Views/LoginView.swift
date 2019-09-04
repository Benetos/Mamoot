//
//  LoginView.swift
//  Mamoot!
//
//  Created by Joe Pichardo on 04/09/2019.
//  Copyright © 2019 Semiak & JoeyPi. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Image("logo-circle")
                .resizable()
                .frame(width: 100, height: 100)
            Spacer()
            Text("See what's happening in the world right now.")
                .fontWeight(.black)
                .font(.largeTitle)
                .lineLimit(4)
                .padding(.bottom, 30)
            Button(action: {
                print("create account")
            }) {
                Text("Create Account")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.blue, lineWidth: 0)
                    )
            }
            Spacer()
            HStack {
                Text("Have an account already? ")
                Button(action: {
                    print("log in")
                }) {
                    Text("Log in")
                }
            }
        }.padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
