//
//  Texts.swift
//  SwiftCommerce
//
//  Created by Web and App on 23/01/2024.
//

import SwiftUI

struct Texts: View {
    var body: some View {
        BoldText(text: "Title Text")
        MultilineText(text: "Regular Text")
    }
}

struct BoldText: View {
    var text: String = ""
    var size: CGFloat = 20.0
    var color: Color = .black
    
    var body: some View {
        Text(text)
            .font(.poppins_bold(size: size))
            .foregroundStyle(color)
    }
}

struct SemiBoldText: View {
    var text: String = ""
    var size: CGFloat = 20.0
    var color: Color = .black
    
    var body: some View {
        Text(text)
            .font(.poppins_semibold(size: size))
            .foregroundStyle(color)
    }
}

struct MediumText: View {
    var text: String = ""
    var size: CGFloat = 20.0
    var color: Color = .black
    
    var body: some View {
        Text(text)
            .font(.poppins_medium(size: size))
            .foregroundStyle(color)
    }
}

struct RegularText: View {
    var text: String = ""
    var size: CGFloat = 20.0
    var color: Color = .black
    
    var body: some View {
        Text(text)
            .font(.poppins_regular(size: size))
            .foregroundStyle(color)
    }
}

struct LightText: View {
    var text: String = ""
    var size: CGFloat = 20.0
    var color: Color = .black
    
    var body: some View {
        Text(text)
            .font(.poppins_light(size: size))
            .foregroundStyle(color)
    }
}

struct MultilineText: View {
    var text: String = ""
    var alignment: TextAlignment = .center
    var lineHeight: CGFloat = 5
    
    var body: some View {
        Text(text)
            .font(.poppins_regular(size: .size_13))
            .multilineTextAlignment(alignment)
            .lineSpacing(lineHeight)
    }
}

#Preview {
    Texts()
}
