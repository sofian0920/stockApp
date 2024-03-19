//
//  TopViewModel.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 18.03.2024.
//

import SwiftUI

class TopViewViewModel: ObservableObject {
    @Published var traders: [TradeModel] = [.test1, .test2, .test3, .test4, .test5, .test6, .test7, .test8, .test9, .test10]
    
    var timer: Timer?
    
    init() {
        startTimer()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { [weak self] timer in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.updateTraders()
            }
        }
    }
    
    func updateTraders() {
        for index in traders.indices {
            traders[index].updateProfit()
        }
        traders.sort { $0.profit > $1.profit }
    }
    
    deinit {
        timer?.invalidate()
    }
}
