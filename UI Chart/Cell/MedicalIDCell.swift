//
//  MedicalIDCell.swift
//  UI Chart
//
//  Created by Muhammad Arif Hidayatulloh on 13/08/20.
//  Copyright © 2020 Ardat Tracode. All rights reserved.
//

import UIKit

class MedicalIDCell: UITableViewCell {

    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellSub: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(data: biodataModel){
        cellTitle.text = data.title
        cellSub.text = data.sub
    }
}
