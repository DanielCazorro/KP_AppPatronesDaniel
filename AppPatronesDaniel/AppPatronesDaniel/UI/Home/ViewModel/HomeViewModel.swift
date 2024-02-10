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
    func onItemSelected(at index: Int)
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
        viewDelegate?.updateViews()
    }
    
}

// MARK: - Extension
extension HomeViewModel: HomeViewModelProtocol {
    func onItemSelected(at index: Int) {
        
        guard let data = data(at: index) else { return }
        // TODO: Comprobar si aquí hubier auqe añadir un detail data
        viewDelegate?.navigateToDetail(with: data)
    }
    
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
