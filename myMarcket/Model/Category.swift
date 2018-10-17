//
//  Category.swift
//  myMarcket
//
//  Created by Georgi Malkhasyan on 10/8/18.
//  Copyright © 2018 Adamyan. All rights reserved.
//

import Foundation
struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
