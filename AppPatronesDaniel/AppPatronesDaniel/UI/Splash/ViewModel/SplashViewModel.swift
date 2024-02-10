//
//  SplashViewModel.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 4/10/23.
//

import Foundation

// MARK: - Protocol
protocol SplashViewModelProtocol {
    func onViewsLoaded() // Método para indicar que la vista ha cargado
}


// MARK: - Class
final class SplashViewModel {
    
    private weak var viewDelegate: SplashViewProtocol? // Delegado de la vista

    init(viewDelegate: SplashViewProtocol?) {
        self.viewDelegate = viewDelegate
    }
    
    private func loadData() {
        viewDelegate?.showLoading(true) // Mostrar indicador de carga
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) { [weak self] in
            self?.viewDelegate?.showLoading(false) // Ocultar indicador de carga después de 2 segundos
            self?.viewDelegate?.navigateToHome() // Navegar a la pantalla de inicio
        }
    }
}

// MARK: - Extension
extension SplashViewModel: SplashViewModelProtocol {
    func onViewsLoaded() {
        loadData() // Llama a la función para cargar datos cuando la vista ha cargado
    }
    
}
