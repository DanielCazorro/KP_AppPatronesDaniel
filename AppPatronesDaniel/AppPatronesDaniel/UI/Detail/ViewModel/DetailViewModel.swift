//
//  DetailViewModel.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 5/10/23.
//

// MARK: - Protocol -

protocol DetailViewModelProtocol {
    var selectedCharacter: CharacterModel? { get }
    func onViewsLoaded()
}

// MARK: - Class -

final class DetailViewModel: DetailViewModelProtocol {

    
    var selectedCharacter: CharacterModel?

    init(selectedCharacter: CharacterModel?) {
        self.selectedCharacter = selectedCharacter
    }
    
    private func loadData() {
        
    }
}

// MARK: - Extension -

extension DetailViewModel {
    func onViewsLoaded() {
        loadData()
    }
}
