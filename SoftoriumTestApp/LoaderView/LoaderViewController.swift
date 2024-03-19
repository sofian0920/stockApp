//
//  ContentView.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 17.03.2024.
//

import SwiftUI

struct LoaderViewController: View {
    @StateObject var viewModel = LoaderViewModel()
    
    var body: some View {
        if !viewModel.permissionRequested {
            ProgressView(isLoading: $viewModel.isLoading)
                .onChange(of: viewModel.isLoading) { value in
                    if value == false {
                        viewModel.requestNotificationPermission()
                    }
                }
        } else {
            TradeTabView()
        }
        
    }
}
