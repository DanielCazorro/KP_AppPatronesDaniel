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
    }

    override func prepareForReuse() {
        nameCellHome.text = nil
        imageCellHome.image = nil
    }
    
    func updateViews
    
    private func update(name: String?) {
        nameCellHome.text = name ?? ""
    }
    
    private func update(image: String?) {
        imageCellHome.image = UIImage(named: image ?? "")
    }
    
}
