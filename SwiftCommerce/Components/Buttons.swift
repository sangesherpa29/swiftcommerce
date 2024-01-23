//
//  Buttons.swift
//  SwiftCommerce
//
//  Created by Web and App on 23/01/2024.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        PrimaryButtonView() {}
        OutlineButtonWithView(width: .infinity, height: 55, action: {}) {
            Text("This is a text view.")
        }
    }
}

struct PrimaryButtonView: View {
    var title: String = "Primary Button"
    var size: CGFloat = .size_13
    var action: ()->Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 100)
                    .frame(height: 55)
                    .foregroundStyle(Color.primaryYellow)
                
                SemiBoldText(text: title, size: size)
            }
        })
    }
}


struct OutlineButtonView<V: View>: View {
    var title: String
    var size: CGFloat
    var action: ()->Void
    var content: ()->V
    
    init(title: String = "Outlined Button",
         size: CGFloat = .size_13,
         action: @escaping ()->Void,
         @ViewBuilder content: @escaping ()->V )
    {
        self.title = title
        self.size = size
        self.action = action
        self.content = content
    }
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 100)
                    .stroke(lineWidth: 1.0)
                    .frame(height: 55)
                    .foregroundStyle(.black)
                
                VStack(content: content)
            }
        })
    }
}


struct OutlineButtonWithView<Content: View>: View {
    var width: CGFloat = 100
    var height: CGFloat = 55
    var action: ()->Void
    var content: Content
    
    init(width: CGFloat, height: CGFloat, action: @escaping ()->Void, @ViewBuilder content: ()->Content) {
        self.width = width
        self.height = height
        self.action = action
        self.content = content()
    }
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack(content: {
                RoundedRectangle(cornerRadius: 100)
                    .stroke(lineWidth: 1.0)
                    .frame(width: width, height: height)
                    .foregroundStyle(.black)
                
                content
            })
            .foregroundStyle(.black)
        })
    }
}

#Preview {
    Buttons()
}
