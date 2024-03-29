//
//  RegistrationView.swift
//  SwiftCommerce
//
//  Created by Web and App on 23/01/2024.
//

import SwiftUI

struct RegistrationView: View {
    @State var email: String
    @State var password: String
    @State var confirmPassword: String
    @State var showPassword = false
    
    var body: some View {
        VStack(spacing: 30) {
            Image("logo")
                .scaleEffect(0.8)
            
            // Login Credentials
            VStack(alignment: .trailing, spacing: 20) {
                PrimaryTextField(titleKey: "Email", text: $email)
                    .font(.poppins_regular(size: .size_15))
                
                OutlinedView {
                    HStack {
                        TextField("Password", text: $password)
                            .font(.poppins_regular(size: .size_15))
                        
                        Button(action: {
                            showPassword.toggle()
                        }, label: {
                            Image(systemName: showPassword ?  "eye" :"eye.slash")
                                .foregroundStyle(.gray)
                        })
                    }
                    .padding(.horizontal, 30)
                }
                
                OutlinedView {
                    HStack {
                        TextField("Confirm Password", text: $password)
                            .font(.poppins_regular(size: .size_15))
                        
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
                
                PrimaryButtonView(title: "Sign up", size: .size_17) {}
            }
            
            
            // Alternate Login
            VStack(spacing: 20) {
                OutlineButtonView(action: {
                    
                }) {
                    HStack(spacing: 20) {
                        Image("google_icon")
                        MediumText(text: "Signup with Google", size: .size_15)
                    }
                }
                
                OutlineButtonView(action: {
                    
                }) {
                    HStack(spacing: 20) {
                        Image("facebook_icon")
                        MediumText(text: "Signup with Facebook", size: .size_15)
                    }
                }
            }
            
            
            HStack {
                MultilineText(text: .loginText)
                Button(action: {
                    
                }, label: {
                    MediumText(text: "Login", size: .size_13)
                })
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

#Preview {
    RegistrationView(email: "", password: "", confirmPassword: "")
}
