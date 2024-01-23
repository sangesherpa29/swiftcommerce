//
//  Buttons.swift
//  SwiftCommerce
//
//  Created by Web and App on 23/01/2024.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        PrimaryButton()
    }
}

struct PrimaryButton: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 100)
                    .frame(height: 55)
                    .foregroundStyle(Color.primaryYellow)
                
                SemiBoldText(text: "Create Account", size: .size_17)
            }
        })
    }
}

struct OutlineButton: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 100)
                    .frame(height: 55)
//                    .foregroundStyle(Color.primaryYellow)
                
                SemiBoldText(text: "Create Account", size: .size_17)
            }
        })
    }
}

#Preview {
    Buttons()
}
