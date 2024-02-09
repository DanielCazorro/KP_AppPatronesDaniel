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
        super.prepareForReuse()
        nameCellHome.text = nil
        imageCellHome.image = nil
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
