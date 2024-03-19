//
//  ButtonView.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 18.03.2024.
//

import SwiftUI

struct ButtonView: View {
    
    @State var timeString = "00:00"
    @State var investString = "1000"
    @State var presenter = false
    @Binding var currencyModel: CurrencyModel
    
    var body: some View {
        VStack(spacing: 11) {
            Button(action: {
                presenter.toggle()
            }) {
                HStack {
                    Spacer()
                    Text(currencyModel.title)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .foregroundColor(.white)
                .font(.interMedium22)
                .padding(.horizontal, 19)
                .frame(height: 55)
                .background(Color.slotBackground)
                .cornerRadius(12)
            }
            
            HStack(spacing: 11) {
                TimerView(timeString: $timeString)
                InvestmentView(numberString: $investString)
            }
            
            HStack {
                Button {
                    
                } label: {
                    Text("Sell")
                        .font(.interBold22)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 16)
                }
                .padding(10)
                .frame(height: 54)
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 12)
                    .fill(Color.sellButtonBackground))
                
                Button {
                } label: {
                    Text("Buy")
                        .font(.interBold22)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 16)
                }
                .padding(10)
                .frame(height: 54)
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 12)
                    .fill(Color.selectedItemBackground))
            }
        }
        .padding(.bottom, 8)
        .sheet(isPresented: $presenter, content: {
            CurrencyView(bindableModel: $currencyModel)
        })
    }
}


struct TradeButtonStack_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(currencyModel: .constant(.test1))
    }
}

