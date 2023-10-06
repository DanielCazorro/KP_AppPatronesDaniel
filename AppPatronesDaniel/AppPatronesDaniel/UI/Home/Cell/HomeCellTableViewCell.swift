//
//  HomeTableViewCell.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 4/10/23.
//

import UIKit

class HomeCellTableViewCell: UITableViewCell {

    // MARK: IBOutlet
    @IBOutlet weak var viewCellHome: UIView!
    @IBOutlet weak var imageCellHome: UIImageView!
    @IBOutlet weak var nameCellHome: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewCellHome.layer.cornerRadius = 3.5
        
        viewCellHome.layer.shadowColor = UIColor.gray.cgColor
        viewCellHome.layer.shadowOffset = .zero
        viewCellHome.layer.shadowOpacity = 0.7
        viewCellHome.layer.shadowRadius = 4.0
        
        imageCellHome.layer.cornerRadius = 4.0
        imageCellHome.layer.opacity = 0.9
    }

    override func prepareForReuse() {
        nameCellHome.text = nil
        imageCellHome.image = nil
    }
    
    func updateViews(data: CharacterModel?) {
        update(name: data?.name)
        update(imageUrl: data?.photo)
    }
    
    private func update(name: String?) {
        nameCellHome.text = name ?? ""
    }
    
    private func update(imageUrl: String?) {
        guard let imageUrlString = imageUrl, let imageUrl = URL(string: imageUrlString) else {
            // Si la URL de la imagen es nula o no válida, puedes asignar una imagen de marcador de posición o dejarla en blanco.
            imageCellHome.image = UIImage(named: "placeholder_image")
            return
        }

        // Crea una sesión URLSession para descargar la imagen
        let session = URLSession.shared

        // Crea una tarea de descarga de datos
        let task = session.dataTask(with: imageUrl) { [weak self] (data, response, error) in
            // Verifica si se ha producido un error durante la descarga de datos
            if let error = error {
                print("Error al descargar la imagen: \(error.localizedDescription)")
                return
            }

            // Verifica si se han recibido datos válidos
            if let data = data, let image = UIImage(data: data) {
                // Asigna la imagen descargada a la vista de imagen en el hilo principal
                DispatchQueue.main.async {
                    self?.imageCellHome.image = image
                }
            } else {
                // Si los datos no son válidos, asigna una imagen de marcador de posición o deja la vista de imagen en blanco
                DispatchQueue.main.async {
                    self?.imageCellHome.image = UIImage(named: "placeholder_image")
                }
            }
        }

        // Inicia la tarea de descarga
        task.resume()
    }
}
