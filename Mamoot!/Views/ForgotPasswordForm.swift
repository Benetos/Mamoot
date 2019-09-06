//
//  LoginView.swift
//  Mamoot!
//
//  Created by Joe Pichardo on 05/09/2019.
//  Copyright © 2019 Semiak & JoeyPi. All rights reserved.
//

import SwiftUI

struct ForgotPasswordForm: View {
    @State var username: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Find your account")
                .fontWeight(.black)
                .font(.largeTitle)
                .lineLimit(4)
                .padding(.bottom, 30)
            Text("Enter your email or username")
            TextField("", text: $username)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                print("reset password")
            }) {
                Text("Reset Password")
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
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: Alignment.topLeading)
        .padding()
    }
}

struct ForgotPasswordForm_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordForm()
    }
}
