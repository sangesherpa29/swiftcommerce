//
//  Font.swift
//  SwiftCommerce
//
//  Created by Web and App on 23/01/2024.
//

import Foundation
import SwiftUI

extension Font {
    static func poppins_bold(size: CGFloat) -> Font {
        .custom("Poppins-Bold", size: size)
    }
    
    static func poppins_semibold(size: CGFloat) -> Font {
        .custom("Poppins-SemiBold", size: size)
    }
    
    static func poppins_medium(size: CGFloat) -> Font {
        .custom("Poppins-Medium", size: size)
    }
    
    static func poppins_regular(size: CGFloat) -> Font {
        .custom("Poppins-Regular", size: size)
    }
    
    static func poppins_light(size: CGFloat) -> Font {
        .custom("Poppins-Light", size: size)
    }
}
