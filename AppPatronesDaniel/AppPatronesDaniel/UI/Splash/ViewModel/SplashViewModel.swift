//
//  SplashViewModel.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 4/10/23.
//

import Foundation

// MARK: - Protocol

// MARK: - Class
final class SplashViewModel {
    
    
    func onViewsLoaded() {
        loadData()
    }
    
    
    private func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            // TODO: Notify view move to home
        }
    }
}

// MARK: - Extension
