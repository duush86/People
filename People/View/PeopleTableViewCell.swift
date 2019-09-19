//
//  PeopleTableViewViewCell.swift
//  People
//
//  Created by Antonio Orozco on 9/19/19.
//  Copyright © 2019 Antonio Orozco. All rights reserved.
//

import UIKit

class PeopleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func bind(person: Person) {
        nameLabel.text = person.name
        occupationLabel.text = person.occupation
        addressLabel.text = person.address
    }
}

