//
//  TopViewController.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 18.03.2024.
//

import SwiftUI
private enum Constants {
    static let topTenLabel = "TOP 10 Traders"
    static let countryLabel = "Country"
    static let nameLabel = "Name"
    static let depositLabel = "Deposit"
    static let profitLabel = "Profit"
}

struct TopViewController: View {
    @ObservedObject var viewModel = TopViewViewModel()
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            Color.topTradersBackground
                .ignoresSafeArea(.all)
            VStack {
                Text(Constants.topTenLabel)
                    .font(.interBold22)
                    .foregroundColor(.white)
                    .padding(.top, 24)
                List {
                    HStack {
                        Text("№").bold()
                            .frame(width: 25, alignment: .leading)
                        Text(Constants.countryLabel).bold()
                            .frame(maxWidth: .infinity, alignment: .center)
                        Text(Constants.nameLabel).bold()
                            .frame(maxWidth: .infinity)
                        Text(Constants.depositLabel).bold()
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        Text(Constants.profitLabel).bold()
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .font(.interMedium12)
                    .foregroundColor(.listHeaderForeground)
                    .listRowBackground(Color.listCellBackground)
                    
                    ForEach(viewModel.traders.indices, id: \.self) { index in
                        let trader = viewModel.traders[index]
                        HStack {
                            Text("\(index + 1)")
                                .frame(width: 25, alignment: .leading)
                            Text(trader.country)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .font(.interMedium12)
                            Text(trader.name)
                                .frame(maxWidth: .infinity)
                            Text("$\(trader.deposit)")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            Text("\(trader.profit)")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        .font(.interMedium14)
                        .foregroundColor(.white)
                        .listRowBackground(index % 2 == 0 ? Color.topTradersBackground : Color.listCellBackground)
                    }
                }
                .environment(\.defaultMinListRowHeight, 50)
            }
        }
        .onReceive(timer) { _ in
            withAnimation(.easeInOut) {
                viewModel.updateTraders()
            }
        }
    }
}

#Preview {
    TopViewController()
}
