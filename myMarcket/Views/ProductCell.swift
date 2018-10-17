//
//  ProductCell.swift
//  myMarcket
//
//  Created by Georgi Malkhasyan on 10/8/18.
//  Copyright © 2018 Adamyan. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productTitileLabel: UILabel!
    
    @IBOutlet weak var productPriceLabel: UILabel!
    
    func updateViews(productupdate: Product) {
        productImage.image = UIImage(named: productupdate.imageName)
        productTitileLabel.text = productupdate.title
        productPriceLabel.text = productupdate.price
    }
    
}
