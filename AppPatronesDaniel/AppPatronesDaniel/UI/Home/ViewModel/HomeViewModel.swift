//
//  HomeViewModel.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 4/10/23.
//

import Foundation


// MARK: - Protocol -

protocol HomeViewModelProtocol {
    
}


// MARK: - Class -

final class HomeViewModel {
    
    private weak var viewDelegate: HomeViewProtocol?
    
    init(viewDelegate: HomeViewProtocol? = nil) {
        self.viewDelegate = viewDelegate
    }
}


// MARK: - Extension

extension HomeViewModel: HomeViewModelProtocol {
    
}
