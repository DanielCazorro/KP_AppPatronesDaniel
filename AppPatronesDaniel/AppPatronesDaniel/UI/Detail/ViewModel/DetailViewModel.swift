//
//  DetailViewModel.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 5/10/23.
//

// MARK: - Protocol -

protocol DetailViewModelProtocol {
        func onViewsLoaded()
}

// MARK: - Class -

final class DetailViewModel: DetailViewModelProtocol {

    private weak var viewDelegate: DetailViewProtocol?
    private var characterData: CharacterModel?

    init(character: CharacterModel?, viewDelegate: DetailViewProtocol?) {
        self.characterData = character
        self.viewDelegate = viewDelegate
    }
    
    func onViewsLoaded() {
        viewDelegate?.updateViews(with: characterData)
    }
    
}
