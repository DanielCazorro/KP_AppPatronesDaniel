//
//  SplashViewController.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 4/10/23.
//

import UIKit

// MARK: - Protocol
protocol SplashViewProtocol: AnyObject {
    func showLoading(_ show: Bool) // Método para mostrar u ocultar el indicador de carga
    func navigateToHome() // Método para navegar a la pantalla de inicio
}

// MARK: - Class
class SplashViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var viewModel: SplashViewModelProtocol?
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.onViewsLoaded()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        activityIndicator.stopAnimating() // Detiene el indicador de actividad cuando la vista desaparece
    }
}

// MARK: - Extension
extension SplashViewController: SplashViewProtocol {
    // Método para mostrar u ocultar el indicador de carga
    func showLoading(_ show: Bool) {
        switch show {
        case true where !activityIndicator.isAnimating:
            activityIndicator.startAnimating()
        case false where activityIndicator.isAnimating:
            activityIndicator.stopAnimating()
        default: break
        }
    }
    // Método para navegar a la pantalla de inicio
    func navigateToHome() {
        let nextVC = HomeTableViewController()
        nextVC.viewModel = HomeViewModel(viewDelegate: nextVC)
        navigationController?.setViewControllers([nextVC], animated: true)
    }
    
}
