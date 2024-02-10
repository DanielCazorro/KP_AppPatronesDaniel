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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.onViewsLoaded()
        /*
        let backButton = UIBarButtonItem()
        backButton.title = "Volver"
        navigationItem.backBarButtonItem = backButton
        */
        
        heroNameLabel.numberOfLines = 0
        heroDescriptionTextView.isScrollEnabled = true
    }

}


// MARK: - Extension -

extension DetailViewController: DetailViewProtocol {
    
    func updateViews(with characterData: CharacterModel?) {
        heroNameLabel.text = characterData?.name
        heroDescriptionTextView.text = characterData?.description
        if let imageName = characterData?.photo {
            heroImageView.image = UIImage(named: imageName)
        }
        
    }
}
