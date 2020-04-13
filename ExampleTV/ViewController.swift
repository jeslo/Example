//
//  ViewController.swift
//  ExampleTV
//
//  Created by Joe on 13/04/20.
//  Copyright © 2020 jess. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    let animals: [String] = ["Horse", "Cow", "Camel", "Sheep", "Goat"]
    
    @IBOutlet weak var tableViewForData: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //self.tableViewForData.register(TableViewCell.self, forCellReuseIdentifier: "cellID")
        tableViewForData.delegate = self
        tableViewForData.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animals.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let datacell = self.tableViewForData.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)as! TableViewCell
        
        datacell.LabelForData.text = self.animals[indexPath.row]
        
        return datacell
    }

}

