//
//  SplashScreenView.swift
//  SwiftCommerce
//
//  Created by Web and App on 23/01/2024.
//

import SwiftUI

struct OnboardingItem {
    let id = UUID()
    let title: String
    let description: String
    let image: String
}

struct OnboardingScreenView: View {
    var title : String = "Trending"
    var description : String = .splashText
    
    var onboardingItems : [OnboardingItem] = [
        OnboardingItem(title: "Trending Items", description: .splashText, image: "splash1"),
        OnboardingItem(title: "Fast Delivery", description: .splashText, image: "splash2"),
        OnboardingItem(title: "Find Nearby Stores", description: .splashText, image: "splash3"),
        OnboardingItem(title: "Easy Ordering", description: .splashText, image: "splash4"),
    ]
    
    var body: some View {
        NavigationView {
            TabView {
                ForEach(onboardingItems, id: \.id) { item in
                    OnboardingItemView(image: item.image, title: item.title, description: item.description)
                }
            }
            .frame(width: .infinity, height: 600)
            .padding(.bottom, 50)
            .tabViewStyle(.page)
            .toolbar {
                Button(action: {
                    
                }, label: {
                    Text("Skip")
                        .foregroundStyle(Color.primaryYellow)
                })
            }
            .onAppear(perform: {
                setupAppearance()
            })
        }
        .navigationBarBackButtonHidden()
        .navigationTitle("")
    }
    
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(hexString: "#FBDE3F")
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(hexString: "#FBDE3F").withAlphaComponent(0.5)
    }
}

#Preview {
    OnboardingScreenView()
}

struct OnboardingItemView: View {
    var image: String = ""
    var title: String = ""
    var description: String = ""
    
    var body: some View {
        VStack {
            Image(image)
                .padding(.bottom, 30)
            
            Text(title)
                .font(.poppins_semibold(size: .size_26))
                .padding(.bottom, 10)
            
            MultilineText(text: .splashText)
        }
        .padding()
    }
}
