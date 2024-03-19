//
//  CurrencyViewModel.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 19.03.2024.
//

import Foundation

class CurrencyViewViewModel: ObservableObject {
    
    @Published var currencies: [CurrencyModel] = [.test1, .test2, .test3, .test4, .test5, .test6, .test7]
}
