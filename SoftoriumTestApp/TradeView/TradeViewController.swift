//
//  TradeViewController.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 17.03.2024.
//

import SwiftUI
import WebKit

private enum Constants {
    static let tradeLabel = "Trade"
    static let balanceLabel = "Balance"
    static let countLabel = "10 000"
}

struct TradeViewController: View {
    @StateObject var viewModel = TradeViewModel()
    
    var body: some View {
        ZStack {
            Color.tradeBackground
                .ignoresSafeArea()
            
            VStack {
                Text(Constants.tradeLabel)
                    .foregroundColor(.white)
                    .font(.interBold22)
                VStack(spacing: 4) {
                    Text(Constants.balanceLabel)
                        .font(.interBold16)
                        .foregroundColor(.tradeBalanceForeground)
                    Text(Constants.countLabel)
                        .font(.interBold16)
                        .foregroundColor(.white)
                }
                .frame(height: 54)
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 12)
                    .fill(Color.slotBackground))
                .padding(.horizontal, 16.0)
                
                WebView(urlString: viewModel.currencyModel.url, targetClass: "")
                    .padding(.horizontal, 16)
                Spacer()
                ButtonView(currencyModel: $viewModel.currencyModel)
                    .padding(.horizontal, 16)
            }
            .dismissKeyboard()
        }
    }
}


struct DismissKeyboardModifier: ViewModifier {
    var dargGesture = DragGesture().onChanged { _ in
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    var tapGesture = TapGesture().onEnded { _ in
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    func body(content: Content) -> some View {
        content
            .gesture(dargGesture)
            .gesture(tapGesture)
    }
}
extension View {
    func dismissKeyboard() -> some View {
        return modifier(DismissKeyboardModifier())
    }
}
