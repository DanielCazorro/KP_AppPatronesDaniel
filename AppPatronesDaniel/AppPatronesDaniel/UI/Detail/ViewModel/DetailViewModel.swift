//
//  DetailViewModel.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 5/10/23.
//

// MARK: - Protocol -

protocol DetailViewModelProtocol {
    var selectedCharacter: CharacterModel? { get }
}

// MARK: - Class -

final class DetailViewModel: DetailViewModelProtocol {
    var selectedCharacter: CharacterModel?

    init(selectedCharacter: CharacterModel?) {
        self.selectedCharacter = selectedCharacter
    }
}
