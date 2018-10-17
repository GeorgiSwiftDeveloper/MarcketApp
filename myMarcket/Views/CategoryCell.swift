//
//  CategoryCell.swift
//  myMarcket
//
//  Created by Georgi Malkhasyan on 10/8/18.
//  Copyright © 2018 Adamyan. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    
    @IBOutlet weak var categoryLabel: UILabel!
 
    
    
    func updateCategory(updateCategory: Category) {
        categoryImage.image = UIImage(named: updateCategory.imageName)
        categoryLabel.text = updateCategory.title
    }

}
