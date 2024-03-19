//
//  TradeTabView.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 18.03.2024.
//

import SwiftUI

struct TradeTabView: View {
    @State var showLoader = true
    
    var body: some View {
        TabView {
            TradeViewController()
                .tabItem {
                    VStack {
                        Image("trade")
                            .renderingMode(.template)
                        Text("Trade")
                    }
                }
            TopViewController()
                .tabItem {
                    VStack {
                        Image(systemName: "person.fill")
                            .renderingMode(.template)
                        Text("Top")
                    }
                }
        }
        .tabBarBackgroundColor(color: .tabBarBackgound)
        .accentColor(.selectedItemBackground)
    }
}


struct TabBarBackgroundColorModifier: ViewModifier {
    var color: Color
    
    init(color: Color) {
        self.color = color
    }
    
    func body(content: Content) -> some View {
        content
            .onAppear() {
                UITabBar.appearance().backgroundColor = UIColor(color)
                UITabBar.appearance().barTintColor = UIColor(color)
            }
    }
}

extension View {
    func tabBarBackgroundColor(color: Color) -> some View {
        modifier(TabBarBackgroundColorModifier(color: color))
    }
}

