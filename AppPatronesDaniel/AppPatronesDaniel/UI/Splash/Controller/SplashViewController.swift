//
//  SplashViewController.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 4/10/23.
//

import UIKit


// MARK: - Protocol
protocol SplashViewProtocol {
    func showLoading(_ show: Bool)
    func navigateToHome()
}




// MARK: - Class
class SplashViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

// MARK: - Extension
extension SplashViewController: SplashViewProtocol {
    func showLoading(_ show: Bool) {
        
    }
    
    func navigateToHome() {
        let nextVC = HomeTableViewController()
        navigationController?.setViewControllers([nextVC], animated: true)
    }
    
    
}
