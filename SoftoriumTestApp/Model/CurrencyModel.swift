//
//  CurrencyModel.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 18.03.2024.
//

import Foundation

struct CurrencyModel {
    
    let id = UUID().uuidString
    let url: String
    let title: String
    
    static let test1 = CurrencyModel(url: "https://www.tradingview.com/chart/?symbol=BMFBOVESPA%3AEUR1%21", title: "EUR/USD")
    static let test2 = CurrencyModel(url: "https://www.tradingview.com/chart/?symbol=NASDAQ%3AGBP", title: "GBR/USD")
    static let test3 = CurrencyModel(url: "https://www.tradingview.com/chart/?symbol=BMFBOVESPA%3AEUR1%21", title: "EUR/USD")
    static let test4 = CurrencyModel(url: "https://www.tradingview.com/chart/?symbol=NASDAQ%3AGBP", title: "GBR/USD")
    static let test5 = CurrencyModel(url: "https://www.tradingview.com/chart/?symbol=BMFBOVESPA%3AEUR1%21", title: "EUR/USD")
    static let test6 = CurrencyModel(url: "https://www.tradingview.com/chart/?symbol=NASDAQ%3AGBP", title: "GBR/USD")
    static let test7 = CurrencyModel(url: "https://www.tradingview.com/chart/?symbol=BMFBOVESPA%3AEUR1%21", title: "EUR/USD")
}
