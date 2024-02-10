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
        viewData = sampleCharacterData // Cargar datos de muestra
        viewDelegate?.updateViews() // Notificar a la vista que los datos han sido cargados
    }
    
}

// MARK: - Extension
extension HomeViewModel: HomeViewModelProtocol {
    func onItemSelected(at index: Int) {
        guard let data = data(at: index) else { return }
        viewDelegate?.navigateToDetail(with: data) // Notificar a la vista que se ha seleccionado un elemento
    }
    
    func data(at index: Int) -> CharacterModel? {
        guard index < dataCount else { return nil }
        return viewData[index] // Obtener los datos en el índice especificado
    }
    
    var dataCount: Int {
        viewData.count // Obtener el número de elementos en los datos
    }
    
    func onViewsLoaded() {
        loadData() // Cargar los datos cuando las vistas sean cargadas
    }
    
}
