//
//  DetailViewController.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 5/10/23.
//

import UIKit

// MARK: - Protocol -

protocol DetailViewProtocol: AnyObject {
    
}


// MARK: - Class -

class DetailViewController: UIViewController {

    // IBOutlets
    
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var heroNameLabel: UILabel!
    @IBOutlet weak var heroDescriptionTextView: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let selectedCharacter = viewModel?.selectedCharacter {
            // Configura los elementos de la vista con los datos del personaje seleccionado
            heroNameLabel.text = selectedCharacter.name
            heroDescriptionTextView.text = selectedCharacter.description
            
            if let imageUrlString = selectedCharacter.photo,
               let imageUrl = URL(string: imageUrlString) {
                // Descarga la imagen desde la URL y asigna la imagen a heroImageView
                // Puedes usar la lógica que mencioné anteriormente para cargar la imagen desde una URL.
            } else {
                // La URL de la imagen es nula o no válida, puedes asignar una imagen de marcador de posición o dejarla en blanco.
                heroImageView.image = UIImage(named: "placeholder_image")
            }
        }
    }

}


// MARK: - Extension -

extension DetailViewController {
    
}
