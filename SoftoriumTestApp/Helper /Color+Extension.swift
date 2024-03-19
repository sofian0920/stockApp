//
//  Color+Extension.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 18.03.2024.
//

import SwiftUI

extension Color {
    static let tradeBackground: Color = .init(hex: 0x121629)
    static let preloaderBackground: Color = .init(hex: 0x5B5A60)
    static var preloaderForeground: Color = .init(hex: 0x35B972)
    static var topTradersBackground: Color = .init(hex: 0x1C1F2D)
    static var listHeaderForeground: Color = .init(hex: 0xC1C2C8)
    static var listCellBackground: Color = .init(hex: 0x2E303E)
    static var tradeBalanceForeground: Color = .init(hex: 0xC8C8C8)
    static var slotBackground: Color = .init(hex: 0x333749)
    static var selectedItemBackground: Color = .init(hex: 0x35B972)
    static var tabBarBackgound: Color = .init(hex: 0x2E3241)
    static var sellButtonBackground: Color = .init(hex: 0xFE3D43)
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hex & 0x0000FF) / 255.0
        )
    }
}
