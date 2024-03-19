//
//  CurrencyView.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 18.03.2024.
//

import SwiftUI

struct CurrencyView: View {
    
    @Binding var bindableModel: CurrencyModel
    @StateObject var viewModel = CurrencyViewViewModel()
    @Environment(\.presentationMode) var presentationMode
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack{
            Color.tradeBackground
            VStack {
                LazyVGrid(columns: columns, content: {
                    ForEach(viewModel.currencies, id: \.id) { model in
                        Text(model.title)
                            .foregroundColor(.white)
                            .font(.interMedium14)
                            .frame(maxWidth: .infinity, minHeight: 55)
                            .background(bindableModel.id == model.id ? Color.selectedItemBackground : Color.slotBackground)
                            .cornerRadius(12)
                            .onTapGesture {
                                bindableModel = model
                                presentationMode.wrappedValue.dismiss()
                            }
                    }
                    
                })
                Spacer()
            }
            .padding()
            
        }
    }
    
}


