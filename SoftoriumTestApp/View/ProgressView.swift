//
//  ProgressView.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 17.03.2024.
//

import SwiftUI

struct ProgressView: View {
    @State private var progress: CGFloat = 0.0
    @Binding var isLoading: Bool
    let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            if isLoading {
                ZStack {
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .frame(width: 300, height: 24)
                            .foregroundColor(.preloaderBackground)
                            .cornerRadius(12)
                        
                        Rectangle()
                            .frame(width: (self.progress / 100 * 300), height: 24)
                            .foregroundColor(.preloaderForeground)
                            .cornerRadius(12)
                        
                    }
                    HStack {
                        Spacer()
                        Text("\(Int(progress))%")
                            .font(.interBold16)
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
            }
        }
        .onReceive(timer) {_ in
            if progress < 100 {
                progress += 0.5
            } else {
                isLoading = false
            }
        }
    }
}
