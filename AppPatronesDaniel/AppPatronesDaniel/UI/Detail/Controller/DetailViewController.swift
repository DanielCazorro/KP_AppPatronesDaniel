//
//  DetailViewController.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 5/10/23.
//

import UIKit

// MARK: - Protocol -

protocol DetailViewProtocol: AnyObject {
    func updateViews()
}


// MARK: - Class -

class DetailViewController: UIViewController {

    // IBOutlets
    
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var heroNameLabel: UILabel!
    @IBOutlet weak var heroDescriptionTextView: UITextView!
    
    var viewModel: DetailViewModelProtocol? // Agrega la propiedad viewModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.onViewsLoaded()
        
        
        if let selectedCharacter = viewModel?.selectedCharacter {
            // Configura los elementos de la vista con los datos del personaje seleccionado
            heroNameLabel.text = selectedCharacter.name
            heroDescriptionTextView.text = selectedCharacter.description
            
            if let imageUrlString = selectedCharacter.photo,
               let imageUrl = URL(string: imageUrlString) {
                // Descarga la imagen desde la URL y asigna la imagen a heroImageView
                // Puedes usar la lógica que mencioné anteriormente para cargar la imagen desde una URL.
                // Por ejemplo:
                DispatchQueue.global().async { [weak self] in
                    if let imageData = try? Data(contentsOf: imageUrl),
                       let image = UIImage(data: imageData) {
                        DispatchQueue.main.async {
                            self?.heroImageView.image = image
                        }
                    } else {
                        // Si hay un error al cargar la imagen, puedes asignar una imagen de marcador de posición o dejarla en blanco.
                        DispatchQueue.main.async {
                            self?.heroImageView.image = UIImage(named: "placeholder_image")
                        }
                    }
                }
            } else {
                // La URL de la imagen es nula o no válida, puedes asignar una imagen de marcador de posición o dejarla en blanco.
                heroImageView.image = UIImage(named: "placeholder_image")
            }
        }
    }
    
    private func registerCells() {
        
    }
}


// MARK: - Extension -

extension DetailViewController {
    func updateViews() {
        // Actualiza la vista con los datos del viewModel
        if let selectedCharacter = viewModel?.selectedCharacter {
            // Actualiza los elementos de la vista con los datos del personaje seleccionado
            heroNameLabel.text = selectedCharacter.name
            heroDescriptionTextView.text = selectedCharacter.description
            
            // Carga la imagen desde la URL (si corresponde) de la misma manera que lo hiciste en viewDidLoad
            // ...
        }
        
        // Aquí pondríamos la función para navegar a la vista Transformaciones
    }
}
