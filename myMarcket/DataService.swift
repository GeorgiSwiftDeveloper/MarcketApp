//
//  DataService.swift
//  myMarcket
//
//  Created by Georgi Malkhasyan on 10/8/18.
//  Copyright © 2018 Adamyan. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let category = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
        
    ]
    
    
    
 private let hats = [
        Product(title: "New TI-sherts for speshal", price: "20$", imageName: "hat01.png"),
        Product(title: "New TI-sherts for speshal", price: "20$", imageName: "hat02.png"),
        Product(title: "New TI-sherts for speshal", price: "20$", imageName: "hat03.png"),
        Product(title: "New TI-sherts for speshal", price: "20$", imageName: "hat04.png")
    
    ]
    
    private let shirts = [
     Product(title: "New TI-sherts for speshal", price: "25$", imageName: "shirt01.png"),
     Product(title: "New TI-sherts for speshal", price: "25$", imageName: "shirt02.png"),
     Product(title: "New TI-sherts for speshal", price: "25$", imageName: "shirt03.png"),
     Product(title: "New TI-sherts for speshal", price: "25$", imageName: "shirt04.png")
    ]
    
    
    private let hoodies = [
     Product(title: "New TI-sherts for speshal", price: "35$", imageName: "hoodie01.png"),
    Product(title: "New TI-sherts for speshal", price: "35$", imageName: "hoodie02.png"),
    Product(title: "New TI-sherts for speshal", price: "35$", imageName: "hoodie03.png"),
    Product(title: "New TI-sherts for speshal", price: "35$", imageName: "hoodie04.png")
    ]
    
    
 private   let digitalGoods = [Product]()
    
    
    func getCategory() -> [Category]  {
        return category
    }
    
    
    
    
    func getProducts(title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
