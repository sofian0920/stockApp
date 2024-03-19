//
//  SoftoriumTestAppApp.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 17.03.2024.
//

import SwiftUI

@main
struct SoftoriumTestAppApp: App {
    var body: some Scene {
        WindowGroup {
            LoaderViewController()
                .preferredColorScheme(.dark)
        }
    }
}

