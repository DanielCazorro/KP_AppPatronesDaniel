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

    // Properties
    private weak var viewDelegate: DetailViewProtocol?
    private var characterData: CharacterModel?

    init(character: CharacterModel?, viewDelegate: DetailViewProtocol?) {
        self.characterData = character
        self.viewDelegate = viewDelegate
    }
    
    // Public Methods
    func onViewsLoaded() {
        // Llamar al método de la vista para actualizar las vistas con los datos del personaje
        viewDelegate?.updateViews(with: characterData)
    }
}
