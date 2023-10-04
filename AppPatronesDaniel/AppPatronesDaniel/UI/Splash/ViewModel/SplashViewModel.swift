//
//  SplashViewModel.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 4/10/23.
//

import Foundation

// MARK: - Protocol
protocol SplashViewModelProtocol {
    func onViewsLoaded()
}



// MARK: - Class
final class SplashViewModel {
    
    private weak var viewDelegate: SplashViewProtocol?
    
    private func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            // TODO: Notify view move to home
        }
    }
}



// MARK: - Extension
extension SplashViewModel: SplashViewModelProtocol {
    func onViewsLoaded() {
        loadData()
    }
    
    
}
