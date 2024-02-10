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
        // Configuración de la apariencia de la celda
        setupCellAppearance()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        nameCellHome.text = nil
        imageCellHome.image = nil
    }
    
    private func setupCellAppearance() {
       viewCellHome.layer.cornerRadius = 2
        // Redondear los bordes de la imagen de la celda
        imageCellHome.layer.cornerRadius = imageCellHome.bounds.height / 2.0 // Hacer la imagen circular
        imageCellHome.clipsToBounds = true // Asegurar que la imagen respete el redondeo
    }
    
    // Esta función pinta la celda
    func updateViews(data: CharacterModel) {
        update(name: data.name)
        update(image: data.photo)
    }
    
    private func update(name: String?) {
        nameCellHome.text = name ?? ""
    }
    
    private func update(image: String?) {
        imageCellHome.image = UIImage(named: image ?? "")
    }
}
