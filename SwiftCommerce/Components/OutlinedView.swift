//
//  OutlinedView.swift
//  SwiftCommerce
//
//  Created by Web and App on 23/01/2024.
//

import SwiftUI

struct OutlinedView<V: View>: View {
    var width: CGFloat = .infinity
    var height: CGFloat = 55.0
    var redius: CGFloat = 20.0
    var content: ()->V
    
    init(@ViewBuilder content: @escaping () -> V) {
        self.content = content
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 100)
                .stroke(lineWidth: 1.0)
                .frame(width: width, height: height)
                .foregroundStyle(.black)
            
            VStack(content: content)
        }
    }
}

#Preview {
    OutlinedView {}
}
