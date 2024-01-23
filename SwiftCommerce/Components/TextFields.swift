//
//  SwiftUIView.swift
//  SwiftCommerce
//
//  Created by Web and App on 23/01/2024.
//

import SwiftUI

struct TextFields: View {
    var body: some View {
        PrimaryTextField(titleKey: "Email", text: .constant(""))
    }
}


struct PrimaryTextField: View {
    var titleKey: String = ""
    @Binding var text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 100)
                .stroke(lineWidth: 1)
                .frame(height: 55)
            
            TextField(titleKey, text: $text)
                .padding(.horizontal, 30)
                .font(.poppins_regular(size: .size_15))
        }
    }
}

#Preview {
    TextFields()
}
