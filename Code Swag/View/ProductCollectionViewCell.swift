//
//  ProductCollectionViewCell.swift
//  Code Swag
//
//  Created by Zhiren Jin on 2019/05/28.
//  Copyright © 2019 Zhiren Jin. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    func updateWith(_ product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productLabel.text = product.title
        priceLabel.text = product.price
    }
}
