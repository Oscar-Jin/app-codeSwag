//
//  ProductViewController.swift
//  Code Swag
//
//  Created by Zhiren Jin on 2019/05/28.
//  Copyright © 2019 Zhiren Jin. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    var products = [Product]()
    
    @IBOutlet weak var productsCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollectionView.delegate = self
        productsCollectionView.dataSource = self

    }
    
    func initializeCVWith(_ category: Category) {
        products = DataService.instance.getProducts(for: category.title)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as! ProductCollectionViewCell
        cell.updateWith(products[indexPath.row])
        
        return cell
    }
    
    
}
