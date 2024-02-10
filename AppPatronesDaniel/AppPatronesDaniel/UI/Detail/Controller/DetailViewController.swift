//
//  DetailViewController.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 5/10/23.
//

import UIKit

// MARK: - Protocol -
protocol DetailViewProtocol: AnyObject {
    func updateViews(with characterData: CharacterModel?)
}

// MARK: - Class -
class DetailViewController: UIViewController {

    // IBOutlets
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var heroNameLabel: UILabel!
    @IBOutlet weak var heroDescriptionTextView: UITextView!
    
    // Agrega la propiedad viewModel
    var viewModel: DetailViewModelProtocol?
    
    //Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.onViewsLoaded()
        configureLabelAndDrescription()
    }
    
    private func configureLabelAndDrescription() {
        heroNameLabel.numberOfLines = 0
        heroDescriptionTextView.isScrollEnabled = true
    }

}

// MARK: - Extension -
extension DetailViewController: DetailViewProtocol {
    
    func updateViews(with characterData: CharacterModel?) {
        // Actualizar las vistas con los datos del personaje
        heroNameLabel.text = characterData?.name
        heroDescriptionTextView.text = characterData?.description
        if let imageName = characterData?.photo {
            heroImageView.image = UIImage(named: imageName)
        }
    }
}
