//
//  RegistrationView.swift
//  SwiftCommerce
//
//  Created by Web and App on 23/01/2024.
//

import SwiftUI

struct AccountCreationView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                Image("registration_image")
                    
                VStack(spacing: 12) {
                    Text("Welcome to Commerce")
                        .font(.poppins_semibold(size: .size_24))
                    
                    MultilineText(text: .splashTextShortened)
                }
                
                VStack {
                    PrimaryButtonView(title: "Create account", size: .size_17) {
                        
                    }
                    
                    OutlineButtonView(title: "Login", size: .size_17, action: {
                        
                    }) {
                        VStack{}
                    }
                }
                
                MultilineText(text: .agreementText)
            }
            .padding()
        }
    }
}

#Preview {
    AccountCreationView()
}
