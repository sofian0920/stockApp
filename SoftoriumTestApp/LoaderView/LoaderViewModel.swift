//
//  LoaderViewModel.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 17.03.2024.
//

import SwiftUI
import UserNotifications

class LoaderViewModel: ObservableObject {
    @Published var isLoading: Bool = true
    @Published var permissionRequested: Bool = false
    
    func requestNotificationPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    self.permissionRequested = true
                } else {
                    self.permissionRequested = true
                }
            }
        }
    }
}
