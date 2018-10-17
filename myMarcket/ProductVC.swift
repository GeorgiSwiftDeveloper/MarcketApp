//
//  ProductVC.swift
//  myMarcket
//
//  Created by Georgi Malkhasyan on 10/8/18.
//  Copyright © 2018 Adamyan. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
 
    

    
    private(set) public var product = [Product]()
    
   
    @IBOutlet weak var productColection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productColection.dataSource = self
        productColection.delegate = self
        
      
    }
    
    func initProduct(category: Category) {
        product = DataService.instance.getProducts(title: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return product.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let products = product[indexPath.row]
            cell.updateViews(productupdate: products)
            return cell
        }else {
            return ProductCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Nice Choose", message: "We have discount cupon 10% off", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        let buyAction = UIAlertAction(title: "BUY", style: .default) { (action) in
                self.performSegue(withIdentifier: "buy", sender: self)
            
        }
        alert.addAction(action)
        alert.addAction(buyAction)
        present(alert, animated: true, completion: nil)
    }


}
