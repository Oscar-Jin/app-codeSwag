//
//  ViewController.swift
//  Code Swag
//
//  Created by Zhiren Jin on 2019/05/27.
//  Copyright © 2019 Zhiren Jin. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell") as? CategoryTableViewCell {
            tableViewCell.updateViewsWith(DataService.instance.getCategories()[indexPath.row])
            return tableViewCell
        }
        else {
            return CategoryTableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "SegueToProductViewController", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? ProductViewController {
            assert(sender as? Category != nil)
            let category = sender as! Category
            
            destinationViewController.initializeCVWith(category)
            destinationViewController.navigationItem.title = category.title
        }
        let barButton = UIBarButtonItem()
        barButton.title = ""
        navigationItem.backBarButtonItem = barButton
    }
    

}

