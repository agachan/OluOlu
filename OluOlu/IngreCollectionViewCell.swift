//
//  IngreCollectionViewCell.swift
//  OluOlu
//
//  Created by AGA TOMOHIRO on 2020/09/10.
//  Copyright © 2020 AGA TOMOHIRO. All rights reserved.
//

import UIKit

class IngreCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ingreImage: UIImageView!
    @IBOutlet weak var ingreLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .red
    }
    
}
