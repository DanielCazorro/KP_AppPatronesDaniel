//
//  HomeViewModel.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 4/10/23.
//

import Foundation


// MARK: - Protocol -

protocol HomeViewModelProtocol {
    var dataCount: Int { get }
    func onViewsLoaded()
    func data(at index: Int) -> CharacterModel?
}


// MARK: - Class -

final class HomeViewModel {
    
    private weak var viewDelegate: HomeViewProtocol?
    private var viewData = CharactersModel()
    
    init(viewDelegate: HomeViewProtocol? = nil) {
        self.viewDelegate = viewDelegate
    }
    
    private func loadData() {
        viewData = sampleCharacterData
        //TODO: Notify view draw information
    }
    
}


// MARK: - Extension

extension HomeViewModel: HomeViewModelProtocol {
    func data(at index: Int) -> CharacterModel? {
        guard index < dataCount else { return nil }
        return viewData[index]
    }
    
    var dataCount: Int {
        viewData.count
    }
    
    func onViewsLoaded() {
        loadData()
    }
    
    
}
