//
//  LoginView.swift
//  Mamoot!
//
//  Created by Joe Pichardo on 05/09/2019.
//  Copyright © 2019 Semiak & JoeyPi. All rights reserved.
//

import SwiftUI

struct LoginFormView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Log in to Mamoot!")
                .fontWeight(.black)
                .font(.largeTitle)
                .lineLimit(4)
                .padding(.bottom, 30)
            TextField("Username", text: $username)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Password", text: $password)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                print("log in")
            }) {
                Text("Log in")
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
            Button(action: {
                print("forgot password")
            }) {
                Text("Forgot Password?")
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: Alignment.topLeading)
        .padding()
    }
}

struct LoginFormView_Previews: PreviewProvider {
    static var previews: some View {
        LoginFormView()
    }
}
