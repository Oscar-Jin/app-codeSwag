//
//  CategoryTableViewCell.swift
//  Code Swag
//
//  Created by Zhiren Jin on 2019/05/27.
//  Copyright © 2019 Zhiren Jin. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var title: UILabel!

    func updateViewsWith(_ category: Category) {
        backgroundImage.image = UIImage(named: category.imageName)
        title.text = category.title
    }
}


