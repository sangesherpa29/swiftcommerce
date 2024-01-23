//
//  LoginView.swift
//  SwiftCommerce
//
//  Created by Web and App on 23/01/2024.
//

import SwiftUI

struct LoginView: View {
    @State var email: String
    @State var password: String
    @State var showPassword = false
    
    var body: some View {
        VStack(spacing: 40) {
            Image("logo")
                .scaleEffect(0.8)
            
            // Login Credentials
            VStack(alignment: .trailing, spacing: 20) {
                PrimaryTextField(titleKey: "Email", text: $email)
                OutlinedView {
                    HStack {
                        TextField("Password", text: $password)
                        
                        Button(action: {
                            showPassword.toggle()
                        }, label: {
                            Image(systemName: showPassword ?  "eye" :"eye.slash")
                                .foregroundStyle(.gray)
                        })
                    }
                    .padding(.horizontal, 30)
                }
                
                MediumText(text: "Forgot Password ?", size: .size_15)
                
                PrimaryButtonView(title: "Login", size: .size_17) {}
            }
            
            
            // Alternate Login
            VStack(spacing: 20) {
                OutlineButtonView(action: {
                    
                }) {
                    HStack(spacing: 20) {
                        Image("google_icon")
                        MediumText(text: "Login with Google", size: .size_15)
                    }
                }
                
                OutlineButtonView(action: {
                    
                }) {
                    HStack(spacing: 20) {
                        Image("facebook_icon")
                        MediumText(text: "Login with Facebook", size: .size_15)
                    }
                }
            }
            
            
            HStack {
                MultilineText(text: .signupText)
                Button(action: {
                    
                }, label: {
                    MediumText(text: "Sign Up", size: .size_13)
                })
            }
            .padding(.top, 50)
        }
        .padding(.horizontal)
    }
}

#Preview {
    LoginView(email: "", password: "")
}
