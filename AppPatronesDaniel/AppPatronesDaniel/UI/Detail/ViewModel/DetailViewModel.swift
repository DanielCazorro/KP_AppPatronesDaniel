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

    private weak var viewDelegate: DetailViewProtocol?
    private var viewData = CharactersModel()
    var selectedCharacter: CharacterModel?

    init(selectedCharacter: CharacterModel?, viewDelegate: DetailViewProtocol?) {
        self.selectedCharacter = selectedCharacter
        self.viewDelegate = viewDelegate
    }
    
    private func loadData() {
        viewData = sampleCharacterData
        viewDelegate?.updateViews()
    }
    
}

// MARK: - Extension -

extension DetailViewModel {
    func onViewsLoaded() {
        loadData()
    }
}
