//
//  ViewController.swift
//  Code Swag
//
//  Created by Zhiren Jin on 2019/05/27.
//  Copyright © 2019 Zhiren Jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
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

    

}

