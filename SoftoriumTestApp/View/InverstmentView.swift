//
//  InverstmentView.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 18.03.2024.
//

import SwiftUI

struct InvestmentView: View {
    @Binding var numberString: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text("Investment")
                .foregroundColor(.gray)
            HStack {
                Image(systemName: "minus.circle")
                    .frame(width: 15, height: 15)
                    .background(Color.white.opacity(.ulpOfOne))
                    .onTapGesture {
                        decrementNumber()
                    }
                TextField("", text: Binding<String>(
                    get: {
                        self.numberString
                    },
                    set: { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        self.numberString = filtered
                    })
                )
                .foregroundColor(.white)
                .keyboardType(.decimalPad)
                .frame(width: 50)
                Image(systemName: "plus.circle")
                    .onTapGesture {
                        incrementNumber()
                    }
            }
            .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
        .padding(.horizontal)
        .background(Color.slotBackground)
        .cornerRadius(12)
    }
    
    func incrementNumber() {
        if let currentNumber = Int(numberString) {
            numberString = "\(currentNumber + 1)"
        }
    }
    
    func decrementNumber() {
        if let currentNumber = Int(numberString), currentNumber > 0 {
            numberString = "\(currentNumber - 1)"
        }
    }
}

struct InvestmentView_Previews: PreviewProvider {
    static var previews: some View {
        InvestmentView(numberString: .constant("1000"))
    }
}
