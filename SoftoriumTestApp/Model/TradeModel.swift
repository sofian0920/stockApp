//
//  TradeModel.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 18.03.2024.
//

import Foundation

struct TradeModel {
    var country: String
    var name: String
    var deposit: Int
    var profit: Int
    
    mutating func updateProfit() {
        self.profit += .random(in: -150...50)
    }
    
    static let test1 = TradeModel(country: "🇫🇷", name: "Bred", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test2 = TradeModel(country: "🇨🇦", name: "Maxim", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test3 = TradeModel(country: "🇺🇸", name: "Sam", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test4 = TradeModel(country: "🇬🇧", name: "Robert", deposit: .random(in: 0...10000), profit: 500)
    static let test5 = TradeModel(country: "🇯🇵", name: "Dan", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test6 = TradeModel(country: "🇰🇷", name: "Alan", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test7 = TradeModel(country: "🇩🇪", name: "Sara", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test8 = TradeModel(country: "🇪🇸", name: "Trevor", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test9 = TradeModel(country: "🇮🇹", name: "Kate", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
    static let test10 = TradeModel(country: "🇷🇺", name: "Amanda", deposit: .random(in: 0...10000), profit: .random(in: 500...2000))
}
