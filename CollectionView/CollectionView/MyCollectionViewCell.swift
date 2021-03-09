//
//  MyCollectionViewCell.swift
//  CollectionView
//
//  Created by Kalyan on 03/03/21.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var userView: UIView!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        userView.layer.cornerRadius = stackView.frame.height/9
    }

}
