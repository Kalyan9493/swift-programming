//
//  UserCell.swift
//  TableView
//
//  Created by Kalyan on 02/03/21.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var userView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var stackview: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        userView.layer.cornerRadius = stackview.frame.size.height/3
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
